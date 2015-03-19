Department.create!([
  {DName: "Headquarters", Dnumber: "1", MgrSsn: "888665555", MgrStartDate: "1981-06-19 00:00:00"},
  {DName: "Administration", Dnumber: "4", MgrSsn: "987654321", MgrStartDate: "1995-01-01 00:00:00"},
  {DName: "Research", Dnumber: "5", MgrSsn: "333445555", MgrStartDate: "1988-05-22 00:00:00"}
])
Employee.create!([
  {FName: "John", MInit: "B", LName: "Smith", Ssn: "123456789", BDate: "1965-01-09 00:00:00", Addres: "731 Fondren, Houston, TX", Sex: "M", Salary: "30000.0", SuperSsn: "333445555", DNo: "5", ssn: nil},
  {FName: "Franklin", MInit: "T", LName: "Wong", Ssn: "333445555", BDate: "1955-12-08 00:00:00", Addres: "638 Voss, Houston, TX", Sex: "M", Salary: "40000.0", SuperSsn: "888665555", DNo: "5", ssn: nil},
  {FName: "Joyce", MInit: "A", LName: "English", Ssn: "453453453", BDate: "1972-07-31 00:00:00", Addres: "5631 Rice, Houston, TX", Sex: "F", Salary: "25000.0", SuperSsn: "333445555", DNo: "5", ssn: nil},
  {FName: "Ramash", MInit: "K", LName: "Narayan", Ssn: "666884444", BDate: "1962-09-15 00:00:00", Addres: "975 Fire Oak, Humble, TX", Sex: "M", Salary: "38000.0", SuperSsn: "333445555", DNo: "5", ssn: nil},
  {FName: "James", MInit: "E", LName: "Borg", Ssn: "888665555", BDate: "1937-11-10 00:00:00", Addres: "450 Stone, Houston, TX", Sex: "M", Salary: "55000.0", SuperSsn: nil, DNo: "1", ssn: nil},
  {FName: "Jennifer", MInit: "S", LName: "Wallace", Ssn: "987654321", BDate: "1941-06-20 00:00:00", Addres: "291 Berry, Bellaire, TX", Sex: "F", Salary: "43000.0", SuperSsn: "888665555", DNo: "4", ssn: nil},
  {FName: "Ahmad", MInit: "V", LName: "Jabbar", Ssn: "987987987", BDate: "1969-03-29 00:00:00", Addres: "980 Dallas, Houston, TX", Sex: "M", Salary: "25000.0", SuperSsn: "987654321", DNo: "4", ssn: nil},
  {FName: "Alicia", MInit: "J", LName: "Zelaya", Ssn: "999887777", BDate: "1968-01-19 00:00:00", Addres: "3321 Castle, Spring, TX", Sex: "F", Salary: "25000.0", SuperSsn: "987654321", DNo: "4", ssn: nil}
])
Dependent.create!([
  {essn: "123456789", Dependent_name: "Alice", sex: "F", bdate: "1988-12-30 00:00:00", relationship: "Daughter"},
  {essn: "123456789", Dependent_name: "Elizabeth", sex: "F", bdate: "1967-05-05 00:00:00", relationship: "Spouse"},
  {essn: "123456789", Dependent_name: "Michael", sex: "M", bdate: "1988-01-04 00:00:00", relationship: "Son"},
  {essn: "333445555", Dependent_name: "Alice", sex: "F", bdate: "1986-04-05 00:00:00", relationship: "Daughter"},
  {essn: "333445555", Dependent_name: "Joy", sex: "F", bdate: "1958-05-03 00:00:00", relationship: "Spouse"},
  {essn: "333445555", Dependent_name: "Theodore", sex: "M", bdate: "1983-10-05 00:00:00", relationship: "Son"},
  {essn: "987654321", Dependent_name: "Abner", sex: "M", bdate: "1942-02-28 00:00:00", relationship: "Spouse"}
])
Location.create!([
  {dnumber: "1", dlocation: "Houston"},
  {dnumber: "4", dlocation: "Stafford"},
  {dnumber: "5", dlocation: "Bellaire"},
  {dnumber: "5", dlocation: "Houston"},
  {dnumber: "5", dlocation: "Sugarland"}
])
Project.create!([
  {pname: "ProductX", pnumber: 1, plocation: "Bellaire", dnum: "5"},
  {pname: "ProductY", pnumber: 2, plocation: "Sugarland", dnum: "5"},
  {pname: "ProductZ", pnumber: 3, plocation: "Houston", dnum: "5"},
  {pname: "Computerization", pnumber: 10, plocation: "Stafford", dnum: "4"},
  {pname: "Reorganization", pnumber: 20, plocation: "Houston", dnum: "1"},
  {pname: "Newbenefits", pnumber: 30, plocation: "Stafford", dnum: "4"}
])
Assignation.create!( [
  { essn: "123456789", pNo: 1, hours: 32.5 },
  { essn: "123456789", pNo: 2, hours: 7.5 },
  { essn: "333445555", pNo: 2, hours: 10 },
  { essn: "333445555", pNo: 3, hours: 10 },
  { essn: "333445555", pNo: 10, hours: 10 },
  { essn: "333445555", pNo: 20, hours: 10 },
  { essn: "453453453", pNo: 1, hours: 20 },
  { essn: "453453453", pNo: 2, hours: 20 },
  { essn: "666884444", pNo: 3, hours: 40 },
  { essn: "888665555", pNo: 20, hours: nil },
  { essn: "987654321", pNo: 20, hours: 15 },
  { essn: "987654321", pNo: 30, hours: 20 },
  { essn: "987987987", pNo: 10, hours: 35 },
  { essn: "987987987", pNo: 30, hours: 5 },
  { essn: "999887777", pNo: 10, hours: 10 },
  { essn: "999887777", pNo: 30, hours: 30 }
])
