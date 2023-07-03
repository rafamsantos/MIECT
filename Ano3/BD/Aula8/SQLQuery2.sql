use rafabd

drop index idx_rid on dbo.mytemp

CREATE TABLE mytemp (
 rid BIGINT IDENTITY (1, 1) NOT NULL,
 at1 INT NULL,
 at2 INT NULL,
 at3 INT NULL,
 lixo varchar(100) NULL
);

CREATE unique clustered INDEX idx_rid ON dbo.mytemp(rid) 

create nonclustered index idx_at1 on dbo.mytemp(at1)
create nonclustered index idx_at2 on dbo.mytemp(at2)
create nonclustered index idx_at3 on dbo.mytemp(at3)
create nonclustered index idx_lixo on dbo.mytemp(lixo)

-- Record the Start Time
DECLARE @start_time DATETIME, @end_time DATETIME;
SET @start_time = GETDATE();
PRINT @start_time
-- Generate random records
DECLARE @val as int = 1;
DECLARE @nelem as int = 50000;
SET nocount ON
WHILE @val <= @nelem
BEGIN
 DBCC DROPCLEANBUFFERS; -- need to be sysadmin
 INSERT mytemp ( at1, at2, at3, lixo)
 SELECT cast((RAND()*@nelem) as int),
 cast((RAND()*@nelem) as int), cast((RAND()*@nelem) as int),
 'lixo...lixo...lixo...lixo...lixo...lixo...lixo...lixo...lixo';
 SET @val = @val + 1;
 END
 PRINT 'Inserted ' + str(@nelem) + ' total records'
 -- Duration of Insertion Process
 SET @end_time = GETDATE();
PRINT 'Milliseconds used: ' + CONVERT(VARCHAR(20), DATEDIFF(MILLISECOND,
@start_time, @end_time));