initialization
setDriver: aDriver stream: aStream readLimit: aReadLimit
	driver := aDriver.
	streamReader :=
		(XMLNestedStreamReader
			on: aStream
			readLimit: aReadLimit).
	writeStream := WriteStream on: (String new: 128).
	nameStream := WriteStream on: (String new: 16).
	context := self tokenContextClass new.