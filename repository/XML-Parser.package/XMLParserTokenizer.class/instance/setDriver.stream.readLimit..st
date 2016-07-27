initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	driver := aDriver.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: aReadLimit).
	streamWriter := XMLNestedStreamWriter new: 3.
	context := self tokenContextClass new.