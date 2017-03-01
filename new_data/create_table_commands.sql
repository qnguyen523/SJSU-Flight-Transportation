DROP TABLE IF EXISTS Reserves, Contains, Operates, Uses, ArrivesAt, DepartsAt, Manufactured;
DROP TABLE IF EXISTS nonstaff, staff,  passenger, seat, flight, airport, airplane, company;

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

CREATE TABLE staff (
  	passengerID int(255) NOT NULL,
  	employeeID int(255) NOT NULL,
  	employeePosition varchar(50) NOT NULL,
  	PRIMARY KEY (employeeID)
) ENGINE=InnoDB;

CREATE TABLE seat (
  seat varchar(3) NOT NULL,
  location varchar(10) NOT NULL,
  serviceClass varchar(10) NOT NULL,
  PRIMARY KEY (seat, serviceClass)
) ENGINE=InnoDB;

ALTER TABLE seat
	ADD INDEX(serviceClass);
	
CREATE TABLE flight (
  	flightNumber int(255) NOT NULL,
  	departureDateTime datetime NOT NULL,
  	arrivalDateTime datetime NOT NULL,
  	PRIMARY KEY (flightNumber)
) ENGINE=InnoDB;

CREATE TABLE airport (
  	school varchar(100) NOT NULL,
  	city varchar(100) NOT NULL,
  	address varchar(100) NOT NULL UNIQUE,
  	PRIMARY KEY (school)
) ENGINE=InnoDB;

CREATE TABLE airplane (
  	modelNumber int(255) NOT NULL,
  	capacity int(255) NOT NULL,
  	PRIMARY KEY (modelNumber)
) ENGINE = InnoDB;

CREATE TABLE company (
  	name varchar(100) NOT NULL,
  	address varchar(100) NOT NULL UNIQUE,
  	PRIMARY KEY (name)
) ENGINE=InnoDB;

CREATE TABLE Reserves (
  	passengerID int(255) NOT NULL,
    flightNumber int(255) NOT NULL,
    seat varchar(3) NOT NULL,
    serviceClass varchar(10) NOT NULL,
      	PRIMARY KEY (flightNumber, passengerID),
      	FOREIGN KEY(seat) REFERENCES seat(seat)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(flightNumber)
	REFERENCES flight(flightNumber)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(passengerID)
	REFERENCES passenger(passengerID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(serviceClass)
	REFERENCES seat(serviceClass)
	ON DELETE CASCADE
    	ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Manufactured (
  modelNumber int(255) NOT NULL,
  companyName varchar(100) NOT NULL,
  PRIMARY KEY (modelNumber),
  FOREIGN KEY(modelNumber)
      REFERENCES airplane(modelNumber)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY(companyName)
        REFERENCES company(name)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Contains (
    flightNumber int(255) NOT NULL,
  	seat varchar(3) NOT NULL,
  	serviceClass varchar(10) NOT NULL,
  	PRIMARY KEY (flightNumber, seat, serviceClass),
  	FOREIGN KEY(seat)
	REFERENCES seat(seat)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
 	FOREIGN KEY(serviceClass)
 	REFERENCES seat(serviceClass)
 	ON DELETE CASCADE
     	ON UPDATE CASCADE,
	FOREIGN KEY(flightNumber)
	REFERENCES flight(flightNumber)
	ON DELETE CASCADE
      	ON UPDATE CASCADE      	
) ENGINE=InnoDB;

CREATE TABLE Operates (
  	employeeID int(255) NOT NULL,
  	flightNumber int(255) NOT NULL,
  	PRIMARY KEY (flightNumber, employeeID),
  	FOREIGN KEY(employeeID)
	REFERENCES staff(employeeID)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(flightNumber)
	REFERENCES flight(flightNumber)
	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Uses (
    flightNumber int(255) NOT NULL,
  	modelNumber int(255) NOT NULL,
  	PRIMARY KEY (flightNumber),
  	FOREIGN KEY(flightNumber)
	REFERENCES flight(flightNumber)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(modelNumber)
	REFERENCES airplane(modelNumber)
	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE ArrivesAt (
  	flightNumber int(255) NOT NULL,
    school varchar(100) NOT NULL,
  	PRIMARY KEY (flightNumber),
  	FOREIGN KEY(school)
	REFERENCES airport(school)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(flightNumber)
	REFERENCES flight(flightNumber)
	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE DepartsAt (
  	flightNumber int(255) NOT NULL,
    school varchar(100) NOT NULL,
  	PRIMARY KEY (flightNumber),
  	FOREIGN KEY(school)
	REFERENCES airport(school)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY(flightNumber)
	REFERENCES flight(flightNumber)
	ON DELETE CASCADE
      	ON UPDATE CASCADE
) ENGINE=InnoDB;
