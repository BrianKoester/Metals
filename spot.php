<!DOCTYPE html>
<html lang="en">
<head>
  <title>Metal Value</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<style>
.Silver {
	color:silver;
}

.Gold {
	color:gold;
}
</style>
</head>

<body>

	<?php

		// declare and initialize variables
		$metal_spot = round($_POST['input_metalSpot'], 2);
		$total_value = 0;
		$total_weight = 0;


		//establish Server connection
		$dbhost = 'localhost';
		$dbuser = 'brian_wrdp1';
		$dbpass = 'juba37';
		$db = 'brian_metals_db';

		$conn = @mysql_connect($dbhost, $dbuser, $dbpass);

		if (!$conn) {
			die('Cannot Connect to Server'); // display error if no Server connection
		}

			
		// establish DB connection	
		$db_selected = @mysql_select_db($db);

		if (!$db_selected) {
			die('Cannot Use Database'); // display error if no DB connection
		}


		// select table from db and set $selected_metal from form info
		if ($_POST['opt_metal']==="silver") { 
			$selected_metal = "Silver"; 
			$query = 'SELECT * FROM silver'; 
		} else { 
			$selected_metal = "Gold"; 
			$query = 'SELECT * FROM gold';
		}

		$result = mysql_query($query);
		
	?>


	<!-- start constructing table to display info -->
	<div class="container">
	  	<h2> <?php echo $selected_metal ?> Holdings</h2>      
		<table class="table table-striped table-condensed">
		    <thead>
				<tr>
					<th>Coin</th>
					<th>Mintage Date</th>
					<th> <?php echo $selected_metal ?> Content (in oz.)</th>
				</tr>
			</thead>

			<tbody>
				<?php
				// read through each record of table
				while($coins = mysql_fetch_array($result))	{ ?>
					<tr><td> <?php echo $coins['Coin']; ?> </td>
						<td> <?php echo $coins['Mintage']; ?> </td>
						<td> <?php echo $coins['Weight']; ?> </td>
					</tr>
					<?php $total_weight += $coins['Weight'];
				}	

				$total_value = $metal_spot * $total_weight; ?>

		    </tbody>
		</table>
	
		<br>

		<h4> Total Weight of <?php echo $selected_metal ?>:  <?php  echo $total_weight ?> oz.  </h4>
		<h4> Spot Price of <?php echo $selected_metal ?>: $<?php echo number_format("$metal_spot", 2) ?> </h4>
		<h3 class="<?php echo $selected_metal ?>"> Current Value of <?php echo $selected_metal ?> &nbsp;<span class="glyphicon glyphicon-hand-right"></span>&nbsp; $<?php echo number_format("$total_value", 2) ?> </h3>
		<hr>

		<a href="index.html" class="btn btn-success" role="button" style="margin-bottom:4em;">Calculate Another Metal Holdings Value</a>
	</div>

</body>
</html>