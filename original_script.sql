CREATE TABLE departments(
  DName VARCHAR(15) NOT NULL,
  Dnumber CHAR(1) NOT NULL,
  MgrSsn CHAR(9) NULL,
  MgrStartDate DATETIME NULL,
  PRIMARY KEY(Dnumber)
)Engine=InnoDB;

CREATE TABLE employees(
  FName VARCHAR(15) NOT NULL,
  MInit CHAR(1) NULL,
  LName VARCHAR(30) NOT NULL,
  Ssn CHAR(9) NOT NULL,
  BDate DATETIME NULL,
  Addres VARCHAR(30) NULL,
  Sex CHAR(1) NOT NULL,
  Salary DECIMAL(10,2) NULL,
  SuperSsn CHAR(9) NULL,
  DNo CHAR(1) NULL,
  PRIMARY KEY(Ssn),
  FOREIGN KEY(SuperSsn) REFERENCES employees(Ssn),
  FOREIGN KEY(DNo) REFERENCES departments(DNumber)
)Engine=InnoDB;

ALTER TABLE departments ADD FOREIGN KEY(MgrSsn) REFERENCES employees(Ssn);

CREATE TABLE projects(
    pname varchar(15),
    pnumber int,
    plocation varchar(15),
    dnum CHAR(1),
    PRIMARY KEY (pnumber),
    FOREIGN KEY (dnum) REFERENCES departments (Dnumber)
)Engine=InnoDB;

CREATE TABLE assignations (
    essn CHAR(9),
    pNo INT,
    hours DECIMAL(10, 2),
    PRIMARY KEY(essn, pNo),
    FOREIGN KEY(pNo) REFERENCES projects(pnumber),
    FOREIGN KEY(essn) REFERENCES employees(ssn)
)Engine=InnoDB;

CREATE TABLE dependents (
    essn char (9),
    Dependent_name varchar (30),
    sex char (1),
    bdate datetime,
    relationship varchar (30),
    primary key (essn, Dependent_name),
    Foreign key (essn) references employees (ssn) 
)Engine=InnoDB;

CREATE TABLE locations (
dnumber char(1),
dlocation varchar(15),
primary key (dnumber, dlocation),
foreign key (dnumber) references departments(dnumber)
)Engine=InnoDB;

/* INSERTS */
INSERT INTO departments VALUES('Research', '5', null, null);
INSERT INTO departments VALUES('Administration', '4', null, null);
INSERT INTO departments VALUES('Headquarters', '1', null, null);

INSERT INTO employees VALUES ('James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', '55000', null, 1);
INSERT INTO employees VALUES ('Franklin','T','Wong', 333445555,'1955-12-08','638 Voss, Houston, TX','M','40000',888665555,5);
INSERT INTO employees VALUES ('John','B','Smith', 123456789,'1965-01-09','731 Fondren, Houston, TX','M','30000',333445555,5);
INSERT INTO employees VALUES ('Jennifer','S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire, TX', 'F', '43000', 888665555, 4);
INSERT INTO employees VALUES ('Alicia','J','Zelaya', 999887777,'1968-01-19','3321 Castle, Spring, TX','F','25000',987654321,4);
INSERT INTO employees VALUES ('Ramash', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble, TX', 'M', '38000', 333445555, 5);
INSERT INTO employees VALUES ('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice, Houston, TX', 'F', '25000', 333445555, 5);
INSERT INTO employees VALUES ('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980 Dallas, Houston, TX', 'M', '25000', 987654321, 4);

UPDATE departments SET MgrSsn = '333445555', MgrStartDate = '1988-05-22' WHERE Dnumber= '5';
UPDATE departments SET MgrSsn = '987654321', MgrStartDate = '1995-01-01' WHERE Dnumber = '4';
UPDATE departments SET MgrSsn = '888665555', MgrStartDate = '1981-06-19' WHERE Dnumber = '1';

INSERT INTO dependents VALUES ('333445555', 'Alice', 'F', '1986-04-05', 'Daughter');
INSERT INTO dependents VALUES ('333445555', 'Theodore', 'M', '1983-10-05', 'Son');
INSERT INTO dependents VALUES  ('333445555', 'Joy', 'F', '1958-05-03', 'Spouse');
INSERT INTO dependents VALUES  ('987654321', 'Abner', 'M', '1942-02-28', 'Spouse');
INSERT INTO dependents VALUES  ('123456789', 'Michael', 'M', '1988-01-04', 'Son');
INSERT INTO dependents VALUES  ('123456789', 'Alice', 'F', '1988-12-30', 'Daughter');
INSERT INTO dependents VALUES  ('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse'); 

INSERT INTO projects VALUES ('ProductX', 1, 'Bellaire', 5);
INSERT INTO projects VALUES ('ProductY', 2, 'Sugarland', 5);
INSERT INTO projects VALUES ('ProductZ', 3, 'Houston', 5);
INSERT INTO projects VALUES ('Computerization', 10, 'Stafford', 4);
INSERT INTO projects VALUES ('Reorganization', 20, 'Houston', 1);
INSERT INTO projects VALUES ('Newbenefits', 30, 'Stafford', 4);

INSERT INTO assignations VALUES ('123456789', '1', '32.5');
INSERT INTO assignations VALUES ('123456789', '2', '7.5');
INSERT INTO assignations VALUES ('666884444', '3', '40.0');
INSERT INTO assignations VALUES ('453453453', '1', '20.0');
INSERT INTO assignations VALUES ('453453453', '2', '20.0');
INSERT INTO assignations VALUES ('333445555', '2', '10.0');
INSERT INTO assignations VALUES ('333445555', '3', '10.0');
INSERT INTO assignations VALUES ('333445555', '10', '10.0');
INSERT INTO assignations VALUES ('333445555', '20', '10.0');
INSERT INTO assignations VALUES ('999887777', '30', '30.0');
INSERT INTO assignations VALUES ('999887777', '10', '10.0');
INSERT INTO assignations VALUES ('987987987', '10', '35.0');
INSERT INTO assignations VALUES ('987987987', '30', '5.0');
INSERT INTO assignations VALUES ('987654321', '30', '20.0');
INSERT INTO assignations VALUES ('987654321', '20', '15.0');
INSERT INTO assignations VALUES ('888665555', '20', null);

INSERT INTO locations VALUES('1','Houston');
INSERT INTO locations VALUES('4','Stafford');
INSERT INTO locations VALUES('5','Bellaire');
INSERT INTO locations VALUES('5','Sugarland');
INSERT INTO locations VALUES('5','Houston');

