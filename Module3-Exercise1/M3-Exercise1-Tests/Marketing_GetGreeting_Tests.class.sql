EXEC tSQLt.NewTestClass 'Marketing_GetGreeting_Tests';
GO

CREATE PROCEDURE Marketing_GetGreeting_Tests.[test Zaki greeting]
AS
BEGIN
	DECLARE @Expected VARCHAR(MAX);
	DECLARE @Actual VARCHAR(MAX);

	SELECT @Actual = (Marketing.GetGreeting('Zaki','Faheem'));

	SET @Expected = 'Dear Z. Faheem';

	EXEC tSQLt.AssertEquals @Expected, @Actual;
END
GO