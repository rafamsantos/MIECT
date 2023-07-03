CREATE FUNCTION project_info (@ssn CHAR(9)) RETURNS @table TABLE(Pname		VARCHAR(15),PLocation  VARCHAR(15))
AS
BEGIN
	INSERT @table SELECT Pname, Plocation FROM works_on, project WHERE Essn = @ssn AND Pno = Pnumber;
	RETURN;
END