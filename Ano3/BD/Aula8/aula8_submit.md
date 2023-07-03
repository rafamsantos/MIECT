# BD: Guião 8


## ​8.1. Complete a seguinte tabela.
Complete the following table.

| #         | Query                                                                                                      | Rows  | Cost  | Pag. Reads | Time (ms)   | Index used    | Index Op.                 | Discussion |
| :---      | :--------------------------------------------------------------------------------------------------------- | :---- | :---- | :--------- | :--------   | :-----------  | :-------------------      | :--------- |
| 1    | SELECT * from Production.WorkOrder                                                                              | 72591 | 0.484 |   531      | 1171        | …             | Clustered Index Scan      |            |
| 2    | SELECT * from Production.WorkOrder where WorkOrderID=1234                                                       |   1   | 0.0031|   141      | 80          |  PK           | Clustered index seek      |            |
| 3.1  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 10000 and 10010                                    |  11   | 0.0033|   141      | 131         |  PK           | Clustered Index Seek      |            |
| 3.2  | SELECT * FROM Production.WorkOrder WHERE WorkOrderID between 1 and 72591                                        | 72592 | 0.488 |   669      | 1422        |  PK           | Clustered index Seek      |            |
| 4    | SELECT * FROM Production.WorkOrder WHERE StartDate = '2007-06-25'                                               |  55   | 0.493 |   538      | 230         |  PK           | Clustered Index Scan      |            |
| 5    | SELECT * FROM Production.WorkOrder WHERE ProductID = 757                                                        |  9    | 0.0035|   30       | 139         | idxProductID  | key Lookup                |            |
| 6.1  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 757                                   |  9    | 0.0032|   24       | 129         | idxProductId  | key lookup clustered      |            |
| 6.2  | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945                                   | 1105  | 0.0046|   1426     | 389         | idxProductID  | index Seek(non Clustered) |            |
| 6.3  | SELECT WorkOrderID FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04'                 |   1   | 0.006 |   1430     | 155         | idxProductID  | index Seek(non clustered)                          |            |
| 7    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04'      |   1   | 0.0033|   1466     | 165         | idxPID_SD     | index seek(non clustered)                          |            |
| 8    | SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2006-01-04'      |   1   | 0.0033|   1426     | 169         | idxdadods(ProductId, StartDate)           |    index seek non clustered                       |            |

## ​8.2.

### a)

```
Para definir rid como chave priemaria do tipo clustered index é necessário usar o atributo unique. 
Query : create unique index idx_rid on dbo.mytemp(rid).
```

### b)

```
percentagem de fragmentação = 98.11%
percentagem de ocupação das páginas dos índices = 64.08%
```

### c)

```
FILLFACTOR = 85:
    - Inserted 50000 total records
    - Milliseconds used: 58173
FILLFACTOR = 60:
    - Inserted 50000 total records
    - Milliseconds used: 56470
FILLFACTOR = 95:
    - Inserted 50000 total records
    - Milliseconds used: 58223


```

### d)

```
Inserted      50000 total records
Milliseconds used: 49853

```

### e)

```
Com indices:
Inserted      50000 total records
Milliseconds used: 132483

A performance é pior com indices, pois o tempo de inserção é maior devido à falta de eficiência.
```

## ​8.3.

```
i.
    CREATE UNIQUE CLUSTERED INDEX index_ssn ON Company.Employee(Ssn);
ii.
    CREATE INDEX index_name ON Company.Employee(Fname, Minit, Lname);
iii.
    CREATE INDEX index_employee_department ON Company.Employee(Dno);
    CREATE UNIQUE CLUSTERED INDEX index_department ON Company.Department(Dnumber);
iv.
	CREATE UNIQUE CLUSTERED INDEX index_works_on ON Company.Works_on(Essn, Pno);
    CREATE UNIQUE CLUSTERED INDEX index_ssn ON Company.Employee(Ssn);
    CREATE INDEX index_project_number ON Company.Project(Pnumber);
v.
	CREATE UNIQUE INDEX index_ssn ON Company.Employee(Ssn);
	CREATE CLUSTERED INDEX index_dependent ON Company.Dependent(Essn);
	CREATE INDEX index_dependent_employee ON Company.Employee(Fname);
vi.
	CREATE UNIQUE INDEX index_department ON Company.Department(Dnumber);
	CREATE CLUSTERED INDEX index_project ON Company.Project(Pnumber, Dnum);


```
