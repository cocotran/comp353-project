CREATE TABLE Person (
  personID INT NOT NULL,
  firstName CHAR(30),
  lastName CHAR(30), 
  dob INT,
  medicareNum INT,
  phoneNum VARCHAR(255),
  address VARCHAR(255), 
  city VARCHAR(255),
  postalCode CHAR(30), 
  province CHAR(30),
  citizenship CHAR(30),
  email VARCHAR(255),
  ageGroup INT,
  PRIMARY KEY (personID)
);

CREATE TABLE NonCanadian (
  personID INT NOT NULL,
  passportNum VARCHAR(255),
  FOREIGN KEY (personID) REFERENCES Person(personID)
);

CREATE TABLE Canadian (
  personID INT NOT NULL,
  SSN VARCHAR(9) UNIQUE,
  FOREIGN KEY (personID) REFERENCES Person(personID)
);

CREATE TABLE  AgeGroup ( 
   groupID INT,
   is_active BOOLEAN,
   upper_bound INT,
   lower_bound INT,
   PRIMARY KEY (groupID)	
 );
 
CREATE TABLE partOf ( 
  personID INT,
  groupID INT,
  FOREIGN KEY (personID) REFERENCES Person(personID),
  FOREIGN KEY (groupID) REFERENCES AgeGroup(groupID)	
);

CREATE TABLE PublicHealthWorker (
  employeeID INT NOT NULL,
  firstName CHAR(30),
  lastName CHAR(30), 
  dob INT,
  medicareNum INT,
  phoneNum VARCHAR(255),
  address VARCHAR(255), 
  city VARCHAR(255),
  postalCode CHAR(30), 
  province CHAR(30),
  citizenship CHAR(30),
  email VARCHAR(255),
  ageGroup INT,
  SSN VARCHAR(9) UNIQUE,
  employmentStartDate DATE,
  employmentEndDate DATE,
  PRIMARY KEY (employeeID)
);

CREATE TABLE Facility ( 
  name CHAR(30), 
  phoneNum INT,
  address VARCHAR(255), 
  webAddress VARCHAR(255),
  type CHAR(30),
  locID INT,
  PRIMARY KEY (locID)	
);

CREATE TABLE InventoryShard (
  shardID INT PRIMARY KEY,
  vaxID INT,
  amount INT,
  FOREIGN KEY (vaxID) REFERENCES Vaccine(vaxID)
);

CREATE TABLE stores (
  locID INT,
  shardID INT,
  FOREIGN KEY (shardID) REFERENCES InventoryShard(shardID),
  FOREIGN KEY (locID) REFERENCES Facility(locID)	
);

CREATE TABLE Shipment (
  shipID INT PRIMARY KEY,
  vaxID INT,
  amount INT,
  shipDate DATE,
  FOREIGN KEY (vaxID) REFERENCES Vaccine(vaxID)
);

CREATE TABLE receives (
  locID INT,
  shardID INT,
  FOREIGN KEY (shipID) REFERENCES Shipment(shipID),
  FOREIGN KEY (locID) REFERENCES Facility(locID)	
);


CREATE TABLE managedBy (
  employeeID INT,
  locID INT,
  FOREIGN KEY (employeeID) REFERENCES PublicHealthWorker(employeeID),
  FOREIGN KEY (locID) REFERENCES Facility(locID)	
);

CREATE TABLE worksAt (
  employeeID INT,
  locID INT,
  startDate DATE,
  endDate DATE,
  FOREIGN KEY (employeeID) REFERENCES PublicHealthWorker(employeeID),
  FOREIGN KEY (locID) REFERENCES Facility(locID)	
);

CREATE TABLE worksAt (
  vaxID INT,
  locID INT,
  transferDate DATE,
  toFacilityID DATE,
  amount INT NOT NULL,
  FOREIGN KEY (vaxID) REFERENCES Vaccine(vaxID),
  FOREIGN KEY (locID) REFERENCES Facility(locID),
  FOREIGN KEY (toFacilityID) REFERENCES Facility(locID)		
);

CREATE TABLE Vaccine ( 
  doseNumber INT,
  vaxID INT,
  approvalDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  type CHAR(30),
  PRIMARY KEY(vaxID)
);

CREATE TABLE SafeVax ( 
  doseNumber INT,
  vaxID INT,
  approvalDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  type CHAR(30),
  PRIMARY KEY(vaxID)
);

CREATE TABLE SuspendedVax ( 
  doseNumber INT,
  vaxID INT,
  approvalDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  dateOfSuspension DATETIME DEFAULT CURRENT_TIMESTAMP,
  type CHAR(30),
  PRIMARY KEY(vaxID)
);

CREATE TABLE vaccinatedBy ( 
  personID INT,
  vaxID INT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (personID) REFERENCES Person(personID),
  FOREIGN KEY (vaxID) REFERENCES Vaccine(vaxID)	
);

CREATE TABLE occursAt ( 
  locID INT,
  vaxID INT,
  FOREIGN KEY (locID) REFERENCES Facility(locID),
  FOREIGN KEY (vaxID) REFERENCES Vaccine(vaxID)	
);

CREATE TABLE PreviousInfections ( 
  prevID INT,
  PRIMARY KEY (prevID)	
);


CREATE TABLE Infections ( 
  prevID INT,
  personID INT,
  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (prevID) REFERENCES PreviousInfections(prevID),
  FOREIGN KEY (personID) REFERENCES Person(personID)
);

