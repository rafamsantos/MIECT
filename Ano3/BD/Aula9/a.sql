create proc remove_func @ssn int
as begin 
		 delete from company.[Dependent] where Essn = @ssn;
		 delete from company.Works_on where Essn = @ssn;
		 update company.Employee set Super_ssn = NULL WHERE Super_ssn = @ssn;
		 update company.Department set Mgr_ssn = NULL where Mgr_ssn = @ssn;
		 delete from company.Employee where Ssn = @ssn;

	end;
	exec remove_func 183623612;

