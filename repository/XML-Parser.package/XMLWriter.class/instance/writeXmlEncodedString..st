private
writeXmlEncodedString: aString
	self
		quote;
		writeXmlEncoded: aString;
		quote