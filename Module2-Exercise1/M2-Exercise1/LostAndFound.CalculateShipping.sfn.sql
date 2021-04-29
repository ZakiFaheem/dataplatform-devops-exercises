Create Function LostAndFound.CalculateShipping
(
@HotelState varchar(10), @ShippingState varchar(10) 
)

RETURNS INT 
AS
BEGIN
	if @HotelState = @ShippingState 
		RETURN 10
	Return 25
END

