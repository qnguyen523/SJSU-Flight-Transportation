CREATE TABLE airplane (
  	modelNumber int(255) NOT NULL,
  	capacity int(255) NOT NULL,
  	PRIMARY KEY (modelNumber)
) ENGINE = InnoDB;


CREATE TABLE airport (
  	school varchar(100) NOT NULL,
  	city varchar(100) NOT NULL,
  	address varchar(100) NOT NULL UNIQUE,
  	PRIMARY KEY (school)
) ENGINE=InnoDB;


CREATE TABLE company (
  	name varchar(100) NOT NULL,
  	address varchar(100) NOT NULL UNIQUE,
  	PRIMARY KEY (name)
) ENGINE=InnoDB;

CREATE TABLE planeManufacturer (
	modelNumber int(255) NOT NULL,
	companyName varchar(100) NOT NULL,
	FOREIGN KEY(modelNumber)
     	REFERENCES airplane(modelNumber)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE,
  	FOREIGN KEY(companyName)
      	REFERENCES company(name)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE flight1 (
  	flightNumber int(255) NOT NULL,
  	duration int(255) NOT NULL,
  	departureDay varchar(20) NOT NULL,
  	arrivalDay varchar(20) NOT NULL,
  	departureTime varchar(20) NOT NULL,
  	arrivalTime varchar(20) NOT NULL,
  	PRIMARY KEY (flightNumber)
) ENGINE=InnoDB;


CREATE TABLE flight2 (
	flightNumber int(255) NOT NULL,
	modelNumber int(255) NOT NULL,
	arrivingAirport varchar(100) NOT NULL,
	departingAirport varchar(100) NOT NULL,
  UNIQUE (modelNumber, flightNumber),
	FOREIGN KEY(modelNumber)
     	REFERENCES airplane(modelNumber)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE,
  	FOREIGN KEY(flightNumber)
      	REFERENCES flight1(flightNumber)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE,
    FOREIGN KEY(arrivingAirport)
     	REFERENCES airport(school)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE,
  	FOREIGN KEY(departingAirport)
      	REFERENCES airport(school)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE passenger (
  	passengerID int(255) NOT NULL,
  	passportNo int(255) NOT NULL UNIQUE,
  	name varchar(50) NOT NULL,
  	PRIMARY KEY (passengerID)
) ENGINE=InnoDB;


CREATE TABLE nonstaff (
  	passengerID int(255) NOT NULL,
  	FOREIGN KEY(passengerID)
      	REFERENCES passenger(passengerID)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;


CREATE TABLE staff1 (
	passengerID int(255) NOT NULL,
  	employeeID int(255) NOT NULL,
  	employeePosition varchar(50) NOT NULL,
  	PRIMARY KEY (employeeID),
  	FOREIGN KEY(passengerID)
      	REFERENCES passenger(passengerID)
      	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE flightstaff (
  flightNumber int(255) NOT NULL,
  employeeID int(255) NOT NULL,
  FOREIGN KEY(employeeID)
        REFERENCES staff1(employeeID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
  FOREIGN KEY(flightNumber)
      REFERENCES flight1(flightNumber)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE seatbooking1 (
  seat varchar(3) NOT NULL,
  seatPreference varchar(10) NOT NULL,
  serviceClass varchar(10) NOT NULL,
  PRIMARY KEY (seat)
) ENGINE=InnoDB;

CREATE TABLE seatbooking2 (
  passengerID int(255) NOT NULL,
  flightNumber int(255) NOT NULL,
  seat varchar(3) NOT NULL,
  UNIQUE (passengerID, flightNumber),
  FOREIGN KEY(passengerID)
      REFERENCES passenger(passengerID)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(flightNumber)
      REFERENCES flight1(flightNumber)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(seat)
      REFERENCES seatbooking1(seat)
      ON DELETE CASCADE
      ON UPDATE CASCADE
) ENGINE=InnoDB;
