accessing
printPercentEncodedCharacter: aCharacter on: aStream
	(XMLPercentEncodingWriteStreamAdapter on: aStream)
		nextPut: aCharacter