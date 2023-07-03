# BD: Guião 9


## ​9.1
 
### *a)*

```
create proc remove_func @ssn int
as begin 
		 delete from company.[Dependent] where Essn = @ssn;
		 delete from company.Works_on where Essn = @ssn;
		 update company.Employee set Super_ssn = NULL WHERE Super_ssn = @ssn;
		 update company.Department set Mgr_ssn = NULL where Mgr_ssn = @ssn;
		 delete from company.Employee where Ssn = @ssn;

	end;
```

### *b)* 

```
create proc info_gestores @ssn INT OUTPUT, @managerYears INT OUTPUT
as begin
		select Ssn from company.Employee join company.Department on company.Department.Mgr_Ssn = company.Employee.Ssn; -- gestores
		select @managerYears = DATEDIFF(year, company.Department.Mgr_start_date, getDate()) from company.Department 
				WHERE Mgr_start_date = (SELECT MIN(Mgr_start_date) from company.Department);
end
```

### *c)* 

```
create trigger not_manager on company.Department after insert, update
as 
begin
	declare @manager_ssn as INT
	select @manager_ssn = Mgr_Ssn from inserted 
	if (select count(Dnumber) from company.Department where Mgr_ssn =  @manager_ssn) >= 1
		raiserror('employee already manages one department', 16,1);

end
```

### *d)* 

```
CREATE TRIGGER salary_get_low ON Company.Employee AFTER INSERT, UPDATE
AS
	BEGIN
		DECLARE @ssn_emp AS INT;
		DECLARE @sal_emp AS INT;
		DECLARE @dno AS INT;
		DECLARE @mgr_sal AS INT;

		SELECT @ssn_emp=inserted.Ssn, @sal_emp=inserted.Salary, @dno=inserted.Dno FROM inserted;
		SELECT @mgr_sal=Company.Employee.Salary FROM Company.Department
			INNER JOIN Company.Employee ON Company.Department.Mgr_Ssn=Company.Employee.Ssn
			WHERE @dno=Company.Department.Dnumber;

		IF @sal_emp > @mgr_sal
		BEGIN
			UPDATE Company.Employee SET Company.Employee.Salary=@mgr_sal-1
			WHERE Company.Employee.Ssn=@ssn_emp
		END
	END
```

### *e)* 

```
CREATE FUNCTION project_info (@ssn CHAR(9)) RETURNS @table TABLE(Pname		VARCHAR(15),PLocation  VARCHAR(15))
AS
BEGIN
	INSERT @table SELECT Pname, Plocation FROM works_on, project WHERE Essn = @ssn AND Pno = Pnumber;
	RETURN;
END
```

### *f)* 

```
CREATE FUNCTION above_average_payment (@dno INT) RETURNS @table TABLE
	(Fname  VARCHAR(15),
	 Lname  VARCHAR(15),
	 Ssn    CHAR(9),
	 Salary DECIMAL(10,2))
AS
BEGIN
	INSERT @table SELECT Fname, Lname, Ssn, Salary FROM Employee JOIN(SELECT Dno, AVG(Salary) as average_salary FROM Department, Employee WHERE Dno = Dnumber GROUP BY Dno) 
    AS DepSal
		ON DepSal.Dno = Employee.Dno AND Salary>average_salary AND Employee.Dno = @dno;
	RETURN;
END
```

### *g)* 

```
... Write here your answer ...
```

### *h)* 

```
... Write here your answer ...
```

### *i)* 

```
Ambos apresentam os mesmos benefícios na medida em que não precisasm de ser recompilados 
		-são ambos guardados na memória cache na primeira vez que são executados (execução mais rápida).

		-SPs podem ou não retornar mais que um valor, as UDFs que retornam um valor.
		-SPs não  suportam cláusulas SELECT, WHERE ou HAVING enquanto que as UDFs sim.
		-SPs suportam excepções, UDFs não.
		-SPs podem receber parâmetros de entrada e de saída, as UDFs apenas podem receber de entrada.
		-UDFs não permitem tabelas temporárias, SPs sim.

```
