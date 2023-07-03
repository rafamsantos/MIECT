create proc info_gestores @ssn INT OUTPUT, @managerYears INT OUTPUT
as begin
		select Ssn from company.Employee join company.Department on company.Department.Mgr_Ssn = company.Employee.Ssn; -- gestores
		select @managerYears = DATEDIFF(year, company.Department.Mgr_start_date, getDate()) from company.Department 
				WHERE Mgr_start_date = (SELECT MIN(Mgr_start_date) from company.Department);
end