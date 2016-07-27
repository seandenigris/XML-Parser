writing markup
string: aString
	self
		flushMarkup;
		writeXmlEncoded: aString.