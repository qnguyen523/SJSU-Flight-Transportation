
<!DOCTYPE html>
<html>
<head>
	<title>Flight Database</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<link rel="shortcut icon" href="./flight_icon.png" type="image/x-icon"/>


	<style>
		table, th, td {
			border: 1px solid black;
		}

		th, td{
			padding: 0px 15px 0px 15px;
			background-color: #F0F0F0;
		}

		td{
			background-color: #FFFFFF;
		}

		body {
			background: url(./background.png) no-repeat center center fixed;
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;

			font-size: 18px;
			color: black;
			font-weight: bold;
			line-height: 200%;
		}

		a:link {
			color:blue;
		}


	</style>
</head>

<body>
	<?php
	$connection = mysqli_connect('localhost','root','','flight_database');
	?>
	<div class="container">
		<center>
			<h1>Team 408 - Flight Database</h1>
			<b>Team Members:</b><br/>
			Seling Chen, Duoc Nguyen, Quoc Nguyen<br/>
		</center>
		<hr/>

		<center><h2>Relations</h2></center>

		<ol>
			<li><a href="/flight_database/index.php?query=Select * From Airplane;" >Airplane</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Airport;" >Airport</a></li>
			<li><a href="/flight_database/index.php?query=Select * From ArrivesAt;" >ArrivesAt</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Company;" >Company</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Contains;" >Contains</a></li>
			<li><a href="/flight_database/index.php?query=Select * From DepartsAt;" >DepartsAt</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Flight;" >Flight</a></li>
			<li><a href="/flight_database/index.php?query=Select * From NonStaff;" >NonStaff</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Operates;" >Operates</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Passenger;" >Passenger</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Reserves;" >Reserves</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Seat;" >Seat</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Staff;" >Staff</a></li>
			<li><a href="/flight_database/index.php?query=Select * From Uses;" >Uses</a></li>
		</ol>

		
		<hr/>

		<center><h2>Queries</h2></center>
		<ol>
			<li><a href="/flight_database/index.php?query=SELECT name, passenger.passengerID, reserves.flightNumber, reserves.seat FROM passenger, reserves WHERE passenger.passengerID = reserves.passengerID AND flightNumber = 1010 GROUP BY name;" >Query 1 - </a>Find passengers who reserved a seat on flight 1010</li>

			<li><a href="/flight_database/index.php?query=SELECT flight.flightNumber, departsat.school, departureDateTime, arrivalDateTime FROM flight, arrivesat, departsat WHERE flight.flightNumber = arrivesat.flightNumber AND flight.flightNumber = departsat.flightNumber AND arrivesat.school='Cal Poly Pomona'">Query 2 - </a>Find departureDateTime and arrivalDateTime for flights going to Cal Poly Pomona</li>

			<li><a href="/flight_database/index.php?query=SELECT reserves.flightNumber, airplane.capacity - COUNT(passengerID) as availableSeats FROM airplane, reserves, arrivesat, uses WHERE arrivesat.school = 'CSU Los Angeles' AND uses.modelNumber = airplane.modelNumber AND uses.flightNumber = arrivesat.flightNumber AND arrivesat.flightNumber = reserves.flightNumber">Query 3 - </a>Count number of available seats for a flight going to CSU Los Angeles</li>

			<li><a href="/flight_database/index.php?query=SELECT reserves.flightNumber, COUNT(passengerID) as reservedSeats FROM reserves, arrivesat WHERE arrivesat.school = 'CSU Los Angeles' AND arrivesat.flightNumber = reserves.flightNumber" >Query 4 - </a>Count number of booked seats for a flight going to CSU Los Angeles</li>

			<li><a href="/flight_database/index.php?query=SELECT departsat.school FROM arrivesat, departsat, flight WHERE arrivesat.flightNumber = departsat.flightNumber AND flight.flightNumber = departsat.flightNumber AND arrivesat.school='San Jose State University' AND flight.departureDateTime LIKE '2016-12-14%'">Query 5 - </a>Find airports who are flying flights to San Jose on 12/14/2016</li>

			<li><a href="/flight_database/index.php?query=SELECT companyName FROM manufactured WHERE manufactured.modelNumber=728">Query 6 - </a>Find the company name that manufactured flight 728</li>

			<li><a href="/flight_database/index.php?query=SELECT staff.employeeID, passenger.name FROM passenger, staff, operates WHERE staff.passengerID=passenger.passengerID AND staff.employeeID=operates.employeeID AND staff.employeePosition='pilot' AND operates.flightNumber=1024">Query 7 - </a>Find the pilots operating flight 1024</li>

			<li><a href="/flight_database/index.php?query=SELECT staff.employeeID, passenger.name FROM passenger, staff, operates WHERE staff.passengerID=passenger.passengerID AND staff.employeeID=operates.employeeID AND staff.employeePosition='flight attendant' AND operates.flightNumber=1024">Query 8 - </a>Find the flight attendants operating flight 1024</li>

			<li><a href="/flight_database/index.php?query=SELECT DISTINCT Staff.employeeID, Passenger.passengerID, Passenger.name, reserves.flightNumber FROM staff, reserves, passenger WHERE staff.passengerID = reserves.passengerID AND staff.passengerID = passenger.passengerID ORDER BY Passenger.name">Query 9 - </a>Find the staffs who also booked a flight</li>

			<li><a href="/flight_database/index.php?query=SELECT COUNT(flightNumber) FROM operates WHERE operates.employeeID = 6454">Query 10 - </a>Count the number of flights operated by employee 6454</li>

			<li><a href="/flight_database/index.php?query=SELECT COUNT(flight.flightNumber) FROM arrivesat, flight WHERE flight.flightNumber = arrivesat.flightNumber AND arrivesat.school='San Jose State University' AND flight.arrivalDateTime LIKE '2016-12-13%'">Query 11 - </a>Count the number of flights arriving to San Jose on 12/13/2016</li>

			<li><a href="/flight_database/index.php?query=SELECT COUNT(Airport.school) FROM airport, manufactured WHERE airport.school = manufactured.companyName ORDER BY Airport.school">Query 12 - </a>Count the number of CSUs that are both airports and airplane manufacturers</li>

			<li><a href="/flight_database/index.php?query=SELECT DISTINCT airport.city FROM manufactured, arrivesat, uses, airport WHERE arrivesat.flightNumber = uses.flightNumber AND uses.modelNumber = manufactured.modelNumber AND manufactured.companyName = 'San Jose State University' ANd airport.school = arrivesat.school ORDER BY airport.city">Query 13 - </a>Find all city names that SJSU company’s plane flies to</li>

			<li><a href="/flight_database/index.php?query=SELECT modelNumber FROM Airplane WHERE modelNumber NOT IN ( SELECT modelNumber FROM uses ) ORDER BY Airplane.modelNumber">Query 14 - </a>Find airplanes models that are not used in flights</li>

			<li><a href="/flight_database/index.php?query=SELECT name FROM company WHERE company.name NOT IN ( SELECT companyName FROM manufactured ) ORDER BY company.name">Query 15 - </a>Find company names who have not manufactured any planes</li>
		</ol>
		<hr/>

		<center><h2>Ad-hoc Query</h2></center>
		<FORM METHOD=GET ACTION="">
			<div class="col-md-12">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<textarea class="form-control" rows="10" style="width: 100%"name="query" placeholder="Please enter your query here. (We support Select, Insert, Update, and Delete queries)"></textarea>
					<div style="text-align: right">
						<button class="btn btn-danger" type=reset>Clear</button>
						<button class="btn btn-primary" type=submit>Submit</button>
					</div>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</FORM>

		<div class="col-md-12">
			<hr/>
			<?php
			if (isset($_REQUEST['query']) && ($_REQUEST['query']) != "")
			{
				echo "<center>";
				echo "<center><h3>Result</h3></center>";
				print "<b>You Queried:</b><br/>".$_REQUEST['query']."<br/><br/>";
						// print $_REQUEST['query']."<br/>";
				echo "<a href=\"/flight_database/index.php\">Reset Query?</a>";
				$result = mysqli_query($connection, $_REQUEST['query']);
				$num_fields = mysqli_num_fields($result);
				$fields = mysqli_fetch_fields($result);

				echo "<table>";

				echo "<tr>";
				for($i = 0; $i<$num_fields; $i++){
					echo "<th>";
					echo "<center>".$fields[$i]->name."</center>";
					echo "</th>";
				}
				echo "</tr>";

				while($row = mysqli_fetch_assoc($result)){
					echo "<tr>";
					foreach($row as $column){
						echo "<td>";
						echo $column;
						echo "</td>";
					}

					echo "</tr>";
				}

				echo "</table></center>";
			}
			?>
			<br/>
		</div>
	</div>
</body>
</html>
