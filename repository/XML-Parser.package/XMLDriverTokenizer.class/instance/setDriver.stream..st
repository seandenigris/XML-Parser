initialization
setDriver: aDriver stream: aStream
	driver := aDriver.
	context := self tokenContextClass new.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: nil).
	streamWriter := XMLNestedStreamWriter new: 3.