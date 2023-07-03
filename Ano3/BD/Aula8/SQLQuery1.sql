DBCC FREEPROCCACHE
DBCC DROPCLEANBUFFERS

use AdventureWorks2012
create nonclustered index idx_dados on Production.WorkOrder(ProductId, StartDate)
SELECT WorkOrderID, StartDate FROM Production.WorkOrder WHERE ProductID = 945 AND StartDate = '2011-12-04'
