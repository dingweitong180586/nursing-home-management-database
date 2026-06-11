
DROP TABLE IF EXISTS CarePlan;
DROP TABLE IF EXISTS Visitors;
DROP TABLE IF EXISTS Resident;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS Room;
DROP TABLE IF EXISTS Medication;

CREATE TABLE Room (
    RoomNumber INT PRIMARY KEY,
    RoomType VARCHAR(50),
    Floor INT,
    Capacity INT
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Role VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    HireDate DATE
);

CREATE TABLE Resident (
    ResidentID INT PRIMARY KEY,
    RoomNumber INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    MedicalHistory TEXT,
    FOREIGN KEY (RoomNumber) REFERENCES Room(RoomNumber)
);

CREATE TABLE Visitors (
    VisitorID INT PRIMARY KEY,
    ResidentID INT,
    VisitorName VARCHAR(100),
    Relationship VARCHAR(50),
    VisitDate DATE,
    CheckInTime TIME,
    CheckOutTime TIME,
    FOREIGN KEY (ResidentID) REFERENCES Resident(ResidentID)
);

CREATE TABLE Medication (
    MedicationID INT PRIMARY KEY,
    Name VARCHAR(100),
    Dosage VARCHAR(50)
);

CREATE TABLE CarePlan (
    PlanID INT PRIMARY KEY,
    ResidentID INT,
    MedicationID INT,
    Goals TEXT,
    EndDate DATE,
    FOREIGN KEY (ResidentID) REFERENCES Resident(ResidentID),
    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID)
);

INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('101', 'Double', '1', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('102', 'Single', '1', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('103', 'Double', '1', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('104', 'Single', '1', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('105', 'Single', '1', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('106', 'Double', '1', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('107', 'Double', '1', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('108', 'Single', '1', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('109', 'Single', '1', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('110', 'Single', '2', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('111', 'Single', '2', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('112', 'Double', '2', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('113', 'Double', '2', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('114', 'Double', '2', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('115', 'Double', '2', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('116', 'Single', '2', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('117', 'Single', '2', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('118', 'Double', '2', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('119', 'Single', '2', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('120', 'Single', '3', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('121', 'Single', '3', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('122', 'Double', '3', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('123', 'Single', '3', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('124', 'Single', '3', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('125', 'Double', '3', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('126', 'Single', '3', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('127', 'Single', '3', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('128', 'Single', '3', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('129', 'Double', '3', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('130', 'Double', '4', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('131', 'Single', '4', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('132', 'Double', '4', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('133', 'Single', '4', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('134', 'Single', '4', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('135', 'Single', '4', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('136', 'Double', '4', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('137', 'Double', '4', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('138', 'Double', '4', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('139', 'Single', '4', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('140', 'Single', '5', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('141', 'Single', '5', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('142', 'Double', '5', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('143', 'Double', '5', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('144', 'Single', '5', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('145', 'Single', '5', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('146', 'Single', '5', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('147', 'Double', '5', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('148', 'Double', '5', '2');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('149', 'Single', '5', '1');
INSERT INTO Room (RoomNumber, RoomType, Floor, Capacity) VALUES ('150', 'Double', '6', '2');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('1', 'Patricia', 'Davis', 'Doctor', '334-046-6924', 'julie45@yahoo.com', '2023-05-06');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('2', 'Linda', 'Smith', 'Doctor', '827-452-3687', 'victoriapetty@gmail.com', '2023-01-27');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('3', 'Michael', 'Cowan', 'Caregiver', '590-705-5369', 'whernandez@scott-montgomery.com', '2021-10-08');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('4', 'Andrew', 'Edwards', 'Caregiver', '751-450-7934', 'brownlynn@mcpherson-graham.com', '2022-03-03');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('5', 'John', 'Wilkerson', 'Caregiver', '288-688-7826', 'raymond56@gmail.com', '2018-05-19');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('6', 'Nicole', 'Torres', 'Nurse', '531-917-2018', 'hooperdiamond@gmail.com', '2022-07-26');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('7', 'John', 'Thompson', 'Nurse', '241-389-7207', 'cody79@serrano.com', '2016-04-23');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('8', 'Carl', 'Moore', 'Doctor', '626-446-6636', 'jesse00@gmail.com', '2020-07-13');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('9', 'Ralph', 'Cox', 'Caregiver', '926-227-4962', 'tammy97@gmail.com', '2019-06-09');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('10', 'Kelsey', 'Riley', 'Doctor', '444-506-5474', 'pdavis@harrison.com', '2019-12-03');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('11', 'Caitlyn', 'Higgins', 'Nurse', '895-822-3382', 'nnguyen@gmail.com', '2022-07-21');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('12', 'Brandi', 'Pace', 'Nurse', '999-292-3609', 'rgarcia@burton-lewis.biz', '2023-06-04');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('13', 'Whitney', 'Weber', 'Nurse', '157-938-0423', 'twells@lutz.com', '2020-01-23');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('14', 'Carol', 'Mendoza', 'Doctor', '473-150-1221', 'wilcoxkelly@gmail.com', '2015-10-05');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('15', 'Nancy', 'Ingram', 'Nurse', '259-342-0111', 'williamsbrian@yahoo.com', '2022-06-23');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('16', 'Cathy', 'Zuniga', 'Therapist', '356-271-9165', 'ibrown@gmail.com', '2015-11-25');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('17', 'Rhonda', 'Houston', 'Doctor', '894-694-8777', 'cbrown@yahoo.com', '2023-08-19');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('18', 'Debra', 'Miller', 'Caregiver', '779-598-9567', 'christensenchristopher@shannon-richards.com', '2020-11-24');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('19', 'Todd', 'Kemp', 'Caregiver', '995-340-9432', 'larry09@hotmail.com', '2021-08-30');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('20', 'Sheila', 'Robinson', 'Caregiver', '947-662-8218', 'ramoslauren@yahoo.com', '2015-12-17');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('21', 'Anthony', 'Peters', 'Nurse', '154-313-1038', 'christianlaurie@gmail.com', '2023-10-20');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('22', 'Melissa', 'Leblanc', 'Caregiver', '100-084-3053', 'jameslewis@yahoo.com', '2021-10-08');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('23', 'Jennifer', 'Lynch', 'Doctor', '007-540-5891', 'michael69@yahoo.com', '2020-01-19');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('24', 'Sarah', 'Ellis', 'Caregiver', '031-019-1523', 'george67@yahoo.com', '2021-09-21');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('25', 'Andrew', 'Jackson', 'Therapist', '566-319-0044', 'lisameyers@yahoo.com', '2019-05-18');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('26', 'Jamie', 'Washington', 'Therapist', '993-467-5033', 'todd13@norris.com', '2022-11-02');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('27', 'Steven', 'Anderson', 'Caregiver', '107-613-8259', 'ann11@yahoo.com', '2015-12-27');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('28', 'Steven', 'Cruz', 'Nurse', '675-449-6732', 'jennifersmith@gmail.com', '2023-01-26');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('29', 'Laura', 'Miller', 'Nurse', '971-329-1558', 'nnelson@yahoo.com', '2016-07-05');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('30', 'David', 'Barker', 'Nurse', '721-912-6348', 'tdelacruz@berger-ramos.com', '2017-01-05');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('31', 'Christopher', 'Carrillo', 'Therapist', '014-099-5740', 'coledarlene@yahoo.com', '2022-09-02');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('32', 'Dustin', 'Salazar', 'Doctor', '251-750-8478', 'perezjames@ortiz-jordan.com', '2017-12-11');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('33', 'Karen', 'Irwin', 'Therapist', '294-027-5496', 'wilsonrachael@gmail.com', '2023-06-21');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('34', 'Kevin', 'Palmer', 'Nurse', '850-145-7906', 'vincentballard@evans-sweeney.com', '2016-08-26');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('35', 'Sarah', 'Nichols', 'Caregiver', '067-535-2033', 'anthony07@jackson.net', '2021-03-09');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('36', 'Sara', 'Kennedy', 'Doctor', '207-424-0141', 'snydershawn@singh.com', '2025-08-22');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('37', 'Ronald', 'Rollins', 'Caregiver', '548-737-0232', 'stephenwatkins@weber.com', '2018-12-27');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('38', 'Darlene', 'Salas', 'Doctor', '093-176-2047', 'tammy73@faulkner.biz', '2020-03-14');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('39', 'Susan', 'Patrick', 'Doctor', '192-604-7990', 'cristian90@hotmail.com', '2025-09-23');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('40', 'Tommy', 'Perez', 'Therapist', '154-051-9340', 'benjaminpruitt@salazar-barnes.com', '2024-10-04');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('41', 'Christopher', 'Coleman', 'Caregiver', '375-450-2481', 'christophermartinez@hammond.com', '2023-08-17');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('42', 'Sean', 'Clay', 'Caregiver', '319-847-2779', 'david33@conley.com', '2021-11-13');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('43', 'Leslie', 'Brown', 'Doctor', '006-124-4357', 'yatesedwin@jones.biz', '2015-10-08');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('44', 'Alexander', 'Mckinney', 'Caregiver', '368-665-2581', 'adam12@arnold-newton.com', '2022-10-15');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('45', 'Angela', 'Vazquez', 'Nurse', '519-856-9078', 'lisa61@rodriguez-santos.info', '2019-10-15');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('46', 'Tammy', 'Harris', 'Doctor', '392-054-2547', 'dpalmer@yahoo.com', '2022-08-13');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('47', 'Stephen', 'Carroll', 'Caregiver', '868-277-4514', 'grayjulie@hotmail.com', '2024-08-01');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('48', 'Steven', 'Oconnell', 'Doctor', '516-864-9233', 'kosborne@hotmail.com', '2024-06-30');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('49', 'Michael', 'Jenkins', 'Caregiver', '067-819-3775', 'lauren96@hotmail.com', '2018-03-25');
INSERT INTO Staff (StaffID, FirstName, LastName, Role, Phone, Email, HireDate) VALUES ('50', 'Angela', 'Flores', 'Doctor', '652-917-8511', 'dixonwesley@hotmail.com', '2025-06-18');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('1', '101', 'Thomas', 'Lawrence', '1955-07-28', 'Female', 'Hypertension, osteoarthritis, mild cognitive impairment');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('2', '102', 'Blake', 'Montoya', '1941-04-07', 'Male', 'Type 2 diabetes, coronary artery disease, history of stroke');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('3', '103', 'Wanda', 'Brewer', '1953-06-20', 'Female', 'Osteoporosis, GERD, cataracts, mobility issues');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('4', '104', 'Julia', 'Donaldson', '1944-09-04', 'Male', 'COPD, hypertension, hearing impairment');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('5', '105', 'Lisa', 'Smith', '1941-03-02', 'Male', 'Alzheimers disease, diabetes, falls risk');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('6', '106', 'Lorraine', 'Smith', '1952-05-23', 'Female', 'Arthritis, hypertension, depression');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('7', '107', 'Alyssa', 'Rosales', '1948-01-24', 'Male', 'Heart failure, renal impairment, osteoporosis');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('8', '108', 'John', 'Collins', '1936-04-01', 'Female', 'Dementia, hypertension, history of hip fracture');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('9', '109', 'Jeffery', 'Oconnor', '1948-07-03', 'Male', 'Parkinsons disease, dysphagia, constipation');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('10', '110', 'Bianca', 'Sanchez', '1965-04-08', 'Female', 'Multiple sclerosis, urinary incontinence, depression');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('11', '111', 'Debra', 'Martinez', '1946-12-11', 'Female', 'Osteoarthritis, glaucoma, hyperlipidemia');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('12', '112', 'Mercedes', 'Conway', '1957-01-03', 'Male', 'Diabetes, peripheral neuropathy, vision impairment');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('13', '113', 'Allison', 'Holmes', '1936-06-14', 'Female', 'Heart disease, pacemaker, arthritis');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('14', '114', 'Catherine', 'Hernandez', '1954-03-01', 'Female', 'Stroke history, aphasia, hypertension, mobility aid required');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('15', '115', 'Steven', 'Richards', '1945-05-19', 'Female', 'Osteoporosis, scoliosis, chronic pain management');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('16', '116', 'Erik', 'Humphrey', '1959-10-21', 'Male', 'Hypertension, benign prostatic hyperplasia, sleep apnea');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('17', '117', 'Christy', 'Delgado', '1952-12-03', 'Female', 'Rheumatoid arthritis, anemia, thyroid disorder');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('18', '118', 'Sarah', 'Myers', '1953-12-19', 'Female', 'Diabetes, retinopathy, peripheral vascular disease');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('19', '119', 'Anthony', 'Perez', '1938-06-16', 'Female', 'Congestive heart failure, renal disease, edema');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('20', '120', 'Shelby', 'Mills', '1952-08-20', 'Male', 'COPD, oxygen dependent, anxiety disorder');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('21', '121', 'Jared', 'Massey', '1945-09-16', 'Male', 'Prostate cancer history, osteoporosis, hearing loss');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('22', '122', 'Leslie', 'Mclaughlin', '1958-11-07', 'Male', 'Hypertension, hypercholesterolemia, obesity');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('23', '123', 'Kim', 'Perez', '1956-01-12', 'Male', 'Liver cirrhosis, diabetes, ascites management');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('24', '124', 'John', 'Joseph', '1952-04-21', 'Female', 'Macular degeneration, diabetes, chronic kidney disease');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('25', '125', 'Jeffrey', 'Boone', '1930-01-05', 'Female', 'Advanced dementia, dysphagia, contractures');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('26', '126', 'Angela', 'Berry', '1954-01-14', 'Male', 'Parkinsons disease, falls risk, depression');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('27', '127', 'Emily', 'Miller', '1960-02-13', 'Male', 'Multiple sclerosis, wheelchair bound, bladder dysfunction');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('28', '128', 'Andrew', 'Gomez', '1951-11-02', 'Male', 'Hypertension, atrial fibrillation, anticoagulant therapy');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('29', '129', 'Nicholas', 'Juarez', '1958-11-02', 'Male', 'Diabetes, peripheral artery disease, foot ulcers');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('30', '130', 'Andrew', 'Sandoval', '1931-08-13', 'Male', 'Chronic obstructive pulmonary disease, oxygen therapy');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('31', '131', 'Jonathan', 'Gonzales', '1955-03-18', 'Female', 'Osteoarthritis, total knee replacement, hypertension');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('32', '132', 'Chad', 'Daniels', '1944-03-24', 'Male', 'Colon cancer history, colostomy, anemia');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('33', '133', 'Daniel', 'Rojas', '1953-12-30', 'Female', 'Heart valve replacement, anticoagulation, arthritis');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('34', '134', 'John', 'Medina', '1948-06-03', 'Male', 'Diabetes mellitus, neuropathy, visual impairment');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('35', '135', 'Justin', 'Simmons', '1952-09-21', 'Male', 'Hypertension, chronic kidney disease stage 3');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('36', '136', 'Julia', 'Baker', '1953-03-10', 'Female', 'Osteoporosis, vertebral fractures, pain management');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('37', '137', 'Mark', 'Stanley', '1936-07-23', 'Female', 'Advanced Alzheimers, wandering tendency, sleep disturbances');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('38', '138', 'Rebecca', 'Butler', '1953-04-25', 'Male', 'Congestive heart failure, diabetes, edema management');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('39', '139', 'Dawn', 'Noble', '1951-09-15', 'Male', 'Rheumatoid arthritis, mobility limitations, depression');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('40', '140', 'Vanessa', 'Price', '1947-01-27', 'Male', 'Chronic pancreatitis, diabetes, nutritional support');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('41', '141', 'Tracey', 'Bowman', '1963-09-15', 'Female', 'Multiple sclerosis, spasticity, communication difficulties');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('42', '142', 'Stefanie', 'Russell', '1947-10-25', 'Male', 'Coronary artery disease, stents, hyperlipidemia');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('43', '143', 'Bruce', 'Swanson', '1933-11-06', 'Female', 'Dementia with Lewy bodies, Parkinsonian features');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('44', '144', 'Chad', 'Morgan', '1959-02-08', 'Male', 'HIV with complications, wasting syndrome, neuropathy');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('45', '145', 'Christopher', 'Ward', '1950-10-15', 'Female', 'Breast cancer history, lymphedema, chronic pain');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('46', '146', 'Michael', 'Mitchell', '1956-01-27', 'Male', 'Hip fracture status post repair, osteoporosis');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('47', '147', 'Christopher', 'Farrell', '1963-05-05', 'Male', 'Spinal cord injury, neurogenic bladder, pressure ulcers');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('48', '148', 'Donald', 'Becker', '1938-04-16', 'Female', 'Congestive heart failure, COPD, oxygen dependent');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('49', '149', 'John', 'Holmes', '1951-11-24', 'Female', 'End-stage renal disease, hemodialysis, diabetes');
INSERT INTO Resident (ResidentID, RoomNumber, FirstName, LastName, DateOfBirth, Gender, MedicalHistory) VALUES ('50', '150', 'Shannon', 'Banks', '1945-06-12', 'Male', 'Advanced prostate cancer with bone metastases, pain management');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('1', '39', 'Jeremy Mueller', 'Friend', '2024-08-26', '16:52:14', '13:02:36');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('2', '4', 'Jessica Jenkins', 'Daughter', '2024-02-12', '18:14:11', '11:59:10');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('3', '33', 'Amanda Erickson', 'Sibling', '2025-07-20', '16:21:15', '14:13:15');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('4', '18', 'Tricia Williams', 'Son', '2025-07-11', '01:38:30', '19:35:49');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('5', '27', 'Daniel Anderson', 'Daughter', '2025-08-12', '19:58:25', '21:19:28');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('6', '24', 'Christopher Morris', 'Daughter', '2023-10-09', '16:02:52', '15:54:41');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('7', '39', 'Michael Allen', 'Son', '2024-11-15', '17:07:29', '08:54:15');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('8', '8', 'John Cruz', 'Daughter', '2024-06-16', '23:24:27', '23:31:08');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('9', '15', 'Melissa Johnson', 'Daughter', '2023-11-16', '17:26:38', '02:50:42');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('10', '50', 'Leah Hudson', 'Sibling', '2024-01-05', '01:49:18', '01:16:58');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('11', '20', 'Tracy Lin', 'Sibling', '2024-06-14', '22:05:55', '13:36:22');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('12', '43', 'Emily Morrison', 'Daughter', '2024-05-10', '06:55:06', '21:35:24');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('13', '26', 'Jacob Allen', 'Sibling', '2025-02-28', '09:41:31', '12:20:17');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('14', '6', 'Katherine Walker', 'Son', '2024-08-09', '06:37:19', '13:50:20');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('15', '26', 'Karen Stewart', 'Friend', '2024-08-17', '17:17:20', '16:18:45');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('16', '45', 'Lauren May', 'Spouse', '2024-03-24', '23:18:17', '08:36:34');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('17', '21', 'Neil Barnett', 'Sibling', '2024-04-30', '13:13:39', '01:28:47');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('18', '26', 'Larry Kelly', 'Spouse', '2025-06-29', '15:35:46', '09:04:41');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('19', '14', 'Terri Hayden', 'Daughter', '2025-06-17', '11:50:23', '14:05:38');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('20', '47', 'Elizabeth Cochran', 'Son', '2025-08-02', '21:43:43', '15:51:30');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('21', '40', 'James Schultz', 'Friend', '2024-01-14', '21:34:46', '11:01:05');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('22', '38', 'Adam Black', 'Daughter', '2023-10-06', '23:36:46', '18:48:00');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('23', '5', 'Melanie Allen DDS', 'Spouse', '2023-10-01', '06:19:44', '18:19:50');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('24', '48', 'Ronald Robinson', 'Friend', '2024-12-21', '06:09:55', '07:36:23');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('25', '45', 'Anna Gomez', 'Daughter', '2025-08-26', '01:17:33', '12:38:39');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('26', '21', 'Robin Lee', 'Daughter', '2024-03-28', '03:21:31', '01:10:21');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('27', '30', 'Sarah Woodward', 'Sibling', '2024-11-05', '20:35:22', '08:47:13');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('28', '43', 'Henry Martin', 'Sibling', '2025-02-23', '15:01:51', '23:54:55');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('29', '8', 'Samantha Stewart', 'Son', '2023-12-18', '19:23:58', '05:55:12');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('30', '9', 'David Mitchell', 'Sibling', '2024-08-03', '02:30:45', '12:25:56');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('31', '43', 'Jim Vaughan', 'Son', '2024-11-02', '11:38:04', '21:29:27');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('32', '24', 'David Weaver', 'Daughter', '2023-12-01', '05:25:11', '06:29:44');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('33', '37', 'Samantha Wheeler', 'Spouse', '2023-12-22', '18:53:03', '13:10:28');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('34', '43', 'Thomas Trujillo', 'Friend', '2024-08-01', '20:17:39', '10:16:08');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('35', '1', 'Matthew Hawkins', 'Friend', '2025-03-28', '18:33:02', '11:47:57');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('36', '22', 'Jeffery Willis', 'Sibling', '2024-07-06', '22:08:04', '00:26:37');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('37', '47', 'Steven Fuller', 'Daughter', '2023-09-26', '01:45:24', '07:18:27');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('38', '33', 'Dennis Reynolds', 'Sibling', '2023-11-10', '18:42:50', '03:31:32');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('39', '45', 'John Mckee', 'Friend', '2024-07-26', '04:40:41', '03:17:22');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('40', '20', 'Jeffrey Jackson', 'Spouse', '2024-12-05', '01:59:59', '13:43:33');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('41', '29', 'Richard Garcia', 'Spouse', '2025-03-08', '12:05:04', '16:33:51');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('42', '7', 'Teresa Stewart', 'Spouse', '2024-05-06', '02:55:51', '18:54:31');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('43', '21', 'Deanna Sanford', 'Daughter', '2024-09-10', '01:58:18', '22:33:54');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('44', '25', 'Brianna Chaney', 'Sibling', '2025-03-30', '09:44:59', '14:01:48');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('45', '36', 'Jacqueline Gates', 'Friend', '2024-06-17', '19:44:56', '21:47:28');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('46', '22', 'Melissa Higgins', 'Daughter', '2025-03-05', '22:11:44', '16:37:30');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('47', '35', 'Richard Delgado', 'Daughter', '2025-04-12', '21:34:25', '14:06:01');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('48', '1', 'Christina Powers', 'Sibling', '2024-01-12', '14:29:52', '22:08:04');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('49', '2', 'Jason Mcdonald', 'Daughter', '2023-11-22', '01:05:48', '18:06:34');
INSERT INTO Visitors (VisitorID, ResidentID, VisitorName, Relationship, VisitDate, CheckInTime, CheckOutTime) VALUES ('50', '28', 'John Patrick', 'Son', '2024-07-22', '10:54:33', '22:19:34');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('1', 'Some', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('2', 'Security', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('3', 'Part', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('4', 'Understand', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('5', 'Space', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('6', 'Everyone', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('7', 'First', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('8', 'Edge', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('9', 'Reach', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('10', 'Control', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('11', 'Then', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('12', 'Officer', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('13', 'Reveal', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('14', 'Child', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('15', 'Explain', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('16', 'Game', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('17', 'Show', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('18', 'Scientist', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('19', 'Five', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('20', 'Out', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('21', 'Successful', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('22', 'Industry', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('23', 'Them', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('24', 'Building', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('25', 'Article', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('26', 'Available', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('27', 'Fly', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('28', 'Evening', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('29', 'Test', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('30', 'Theory', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('31', 'Determine', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('32', 'Minute', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('33', 'Step', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('34', 'Evidence', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('35', 'See', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('36', 'Lay', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('37', 'Board', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('38', 'Lead', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('39', 'Into', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('40', 'Lay', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('41', 'Hear', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('42', 'Color', '1 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('43', 'Exist', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('44', 'Local', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('45', 'Day', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('46', 'Daughter', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('47', 'Security', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('48', 'Have', '2 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('49', 'Form', '3 tablets daily');
INSERT INTO Medication (MedicationID, Name, Dosage) VALUES ('50', 'Save', '3 tablets daily');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('1', '3', '49', 'Answer which tree marriage people sort recent.', '2026-01-13');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('2', '1', '20', 'Fish stay word will unit.', '2026-09-07');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('3', '2', '3', 'Television public past fund eat before.', '2026-07-15');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('4', '20', '35', 'Third cultural hear project.', '2026-06-19');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('5', '42', '31', 'Series deep individual.', '2026-08-05');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('6', '16', '21', 'Early several news task keep particularly land.', '2026-05-24');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('7', '5', '4', 'All say laugh quickly including have.', '2026-07-29');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('8', '34', '50', 'Movie side music probably.', '2026-02-24');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('9', '9', '35', 'Officer him animal resource gas sister describe.', '2026-08-06');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('10', '9', '29', 'How personal company.', '2026-06-08');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('11', '42', '32', 'American step operation hard box social.', '2026-08-23');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('12', '44', '45', 'Speak since cover our their partner.', '2025-11-21');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('13', '34', '6', 'You pull break everyone cut.', '2025-11-12');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('14', '31', '46', 'Most stay him difference bed phone.', '2026-02-03');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('15', '30', '3', 'Message present explain.', '2025-12-12');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('16', '6', '39', 'Middle physical two.', '2025-12-30');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('17', '35', '23', 'Community seat easy between science degree.', '2025-10-17');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('18', '20', '28', 'Check story week school shake white often together.', '2026-08-20');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('19', '11', '14', 'Color interest bring prepare option decide party.', '2025-10-01');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('20', '19', '8', 'Key range thought computer exactly film.', '2026-08-31');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('21', '34', '41', 'One politics entire never.', '2026-04-28');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('22', '9', '27', 'Oil meeting responsibility probably law six put.', '2025-12-28');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('23', '14', '5', 'Resource some want national stage effect here.', '2026-08-24');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('24', '36', '7', 'Few that music production.', '2025-12-17');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('25', '19', '48', 'Contain current professional idea.', '2026-07-11');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('26', '43', '42', 'Already in power serve know.', '2026-03-31');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('27', '13', '23', 'Particularly away down account management.', '2026-04-01');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('28', '41', '38', 'Difficult fall part phone analysis see director.', '2026-06-07');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('29', '42', '31', 'Magazine choose its almost present reality local.', '2026-01-18');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('30', '49', '40', 'Production mission single take international case.', '2025-09-28');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('31', '44', '26', 'Dinner recent one paper management beautiful.', '2025-11-24');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('32', '10', '24', 'Article let here fish security ten organization.', '2026-08-17');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('33', '11', '31', 'Book ever remain or wait it.', '2026-09-10');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('34', '13', '31', 'Type guess top college political health language leader.', '2026-01-13');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('35', '50', '23', 'Difference item force fire natural prevent race.', '2026-02-08');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('36', '20', '31', 'Billion southern thousand behavior east foreign camera.', '2026-02-17');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('37', '19', '48', 'Tough consumer security administration far health.', '2025-12-20');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('38', '25', '5', 'Along radio grow head focus data.', '2026-09-05');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('39', '44', '28', 'Then industry wind get early century.', '2026-09-11');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('40', '26', '18', 'Marriage fund marriage prepare away wall last.', '2026-09-21');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('41', '23', '42', 'Right little reality everything step.', '2026-06-22');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('42', '46', '24', 'Whatever open where ready traditional actually this.', '2026-05-24');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('43', '26', '24', 'Discover skill couple approach.', '2026-03-23');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('44', '47', '35', 'Group nor body second light bag those by.', '2026-03-16');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('45', '24', '9', 'Stand maybe war deep.', '2026-05-28');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('46', '14', '23', 'Lead seven top already bank myself.', '2026-06-30');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('47', '42', '17', 'Put store simple exist foreign argue first story.', '2026-09-17');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('48', '32', '9', 'Book friend share heavy certainly level.', '2026-03-31');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('49', '46', '39', 'Another yourself current.', '2026-02-19');
INSERT INTO CarePlan (PlanID, ResidentID, MedicationID, Goals, EndDate) VALUES ('50', '30', '6', 'Firm race man study to.', '2026-06-12');