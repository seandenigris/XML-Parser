initialization
initialize
	streamReader := XMLNestedStreamReader new.
	streamWriter := XMLNestedStreamWriter new.
	state := #atStart.