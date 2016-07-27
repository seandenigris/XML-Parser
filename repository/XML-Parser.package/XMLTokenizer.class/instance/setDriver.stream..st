initialization
setDriver: aDriver stream: aStream
	driver := aDriver.
	context := XMLTokenContext new.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			from: (driver ifNotNil: [driver documentURI])
			onClose: nil).
	streamWriter := XMLNestedStreamWriter new.