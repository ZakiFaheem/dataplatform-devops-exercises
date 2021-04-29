EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test when item gets shipped to same state]
AS
BEGIN
	DECLARE @ExpectedShippingCost INT;
	DECLARE @ActualShippingCost INT;

	SELECT @ActualShippingCost = (LostAndFound.CalculateShipping('CA','CA'));

	SET @ExpectedShippingCost = 10;

	EXEC tSQLt.AssertEquals @ExpectedShippingCost, @ActualShippingCost;
END
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test when item gets shipped to a different state]
AS
BEGIN
	DECLARE @ExpectedShippingCost INT;
	DECLARE @ActualShippingCost INT;

	SELECT @ActualShippingCost = (LostAndFound.CalculateShipping('CA','NY'));

	SET @ExpectedShippingCost = 25;

	EXEC tSQLt.AssertEquals @ExpectedShippingCost, @ActualShippingCost;
END
GO