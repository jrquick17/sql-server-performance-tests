-- To measure the performance of a set of sql statements enter the code between the START and END COMMAND comments
-- To change the number of iterations change all 3 lines with the comment "# of loops"

BEGIN TRANSACTION IncrementTransaction;

SET XACT_ABORT ON;
GO 100 -- # of loops

SET NOCOUNT ON;

DECLARE @startTime TIME(7) = GETDATE();

-- START COMMAND
SELECT TOP 0 0;
-- END COMMAND

DECLARE @endTime TIME(7) = GETDATE();

DECLARE @elapsed float = DATEDIFF(ms, @startTime, @endTime);

PRINT FORMAT(@elapsed, '00000.00');

SET NOCOUNT OFF;

GO 100 -- # of loops

COMMIT TRANSACTION IncrementTransaction;
GO 100 -- # of loops
