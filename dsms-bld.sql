SET foreign_key_checks = 0;

DROP TABLE Staff;
DROP TABLE Appointment;
DROP TABLE Participant;
DROP TABLE Relations;
DROP TABLE Guardian;
DROP TABLE Behaviour;
DROP TABLE Category;
DROP TABLE Subcat;

SET foreign_key_checks = 1;

CREATE TABLE Staff
(
    staffID      CHAR(5),
    fName        VARCHAR(20),
    lName        VARCHAR(20),
    title        VARCHAR(3),
    position     VARCHAR(10),
    phoneNumber  VARCHAR(14),
    emailAddress VARCHAR(30),
    PRIMARY KEY (staffID)
);

CREATE TABLE Appointment
(
    dateTime      DATETIME,
    duration      SMALLINT,
    staffID       CHAR(5),
    participantID CHAR(5),
    PRIMARY KEY (dateTime, staffID, participantID),
    FOREIGN KEY (staffID) REFERENCES Staff (staffID),
    FOREIGN KEY (participantID) REFERENCES Participant (participantID)
);


CREATE TABLE Participant
(
    participantID    CHAR(5),
    ndisID           CHAR(10),
    dateOfBirth      DATE,
    fName            VARCHAR(20),
    lName            VARCHAR(20),
    contact          VARCHAR(30),
    preferredSupport CHAR(5),
    PRIMARY KEY (participantID),
    FOREIGN KEY (preferredSupport) REFERENCES Staff (staffID)
);

CREATE TABLE Relations
(
    relationship  VARCHAR(15),
    participantID CHAR(5),
    guardianID    CHAR(5),
    PRIMARY KEY (participantID, guardianID),
    FOREIGN KEY (participantID) REFERENCES Participant (participantID),
    FOREIGN KEY (guardianID) REFERENCES Guardian (guardianID)
);

CREATE TABLE Guardian
(
    guardianID   CHAR(5),
    fName        VARCHAR(20),
    lName        VARCHAR(20),
    phoneNumber  VARCHAR(14),
    emailAddress VARCHAR(30),
    PRIMARY KEY (guardianID)
);

CREATE TABLE Behaviour
(
    behaviourID   CHAR(9),
    time          TIME,
    duration      SMALLINT,
    severity      TINYINT,
    location      VARCHAR(20),
    staffID       CHAR(5),
    participantID CHAR(5),
    categoryID    CHAR(2),
    subID         CHAR(2),
    PRIMARY KEY (behaviourID),
    FOREIGN KEY (participantID) REFERENCES Participant (participantID),
    FOREIGN KEY (categoryID) REFERENCES Category (categoryID),
    FOREIGN KEY (subID) REFERENCES SubCat (subID)
);

CREATE TABLE Category
(
    categoryID CHAR(2),
    name       VARCHAR(20),
    descr      VARCHAR(20),
    PRIMARY KEY (categoryID)
);

CREATE TABLE Subcat
(
    subID      CHAR(2),
    name       VARCHAR(20),
    descr      VARCHAR(20),
    categoryID CHAR(2),
    PRIMARY KEY (subID),
    FOREIGN KEY (categoryID) REFERENCES Category (categoryID)
);

CREATE TABLE Strategies
(
    descr      CHAR(50),
    subID      CHAR(2),
    PRIMARY KEY (descr, subID),
    FOREIGN KEY (subID) REFERENCES Subcat (subID)
);