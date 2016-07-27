initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	driver := aDriver.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: aReadLimit).
	"must use #writeStream instead of WriteStream on: to get a 0-based stream
	on Gemstone"
	writeStream := (String new: 128) writeStream.
	nameStream := (String new: 16) writeStream.
	context := XMLUnitializedContext new.