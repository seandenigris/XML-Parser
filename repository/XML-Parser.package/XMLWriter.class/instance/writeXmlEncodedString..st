private
writeXmlEncodedString: aString
	self
		nextPut: $";
		writeXmlEncoded: aString;
		nextPut: $"