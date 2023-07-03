CREATE FUNCTION above_average_payment (@dno INT) RETURNS @table TABLE
	(Fname  VARCHAR(15),
	 Lname  VARCHAR(15),
	 Ssn    CHAR(9),
	 Salary DECIMAL(10,2))
AS
BEGIN
	INSERT @table
		SELECT Fname, Lname, Ssn, Salary
		FROM Employee JOIN(SELECT Dno, AVG(Salary) as average_salary
						   FROM Department, Employee
						   WHERE Dno = Dnumber
						   GROUP BY Dno) AS DepSal
		ON DepSal.Dno = Employee.Dno AND Salary>average_salary AND Employee.Dno = @dno;
	RETURN;
END