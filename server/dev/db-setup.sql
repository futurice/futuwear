CREATE TABLE Devices (
	ID VARCHAR(255) PRIMARY KEY,
	pin VARCHAR(50),
	name VARCHAR(255) UNIQUE
);
CREATE TABLE Sensors (
	ID VARCHAR(255) PRIMARY KEY,
	type VARCHAR(255) NOT NULL,
	name VARCHAR(255),
	ownerKey VARCHAR(255),
	FOREIGN KEY(ownerKey) REFERENCES Devices(ID)
);
CREATE TABLE Data (
	sensorID VARCHAR(255),
	logged DATETIME DEFAULT CURRENT_TIMESTAMP,
	unit VARCHAR(20),
	val INT DEFAULT 0,
	reference INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	FOREIGN KEY(sensorID) REFERENCES Sensors(ID)
);