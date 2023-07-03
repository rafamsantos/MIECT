create trigger not_manager on company.Department after insert, update
as 
begin
	declare @manager_ssn as INT
	select @manager_ssn = Mgr_Ssn from inserted 
	if (select count(Dnumber) from company.Department where Mgr_ssn =  @manager_ssn) >= 1
		raiserror('employee already manages one department', 16,1);

end