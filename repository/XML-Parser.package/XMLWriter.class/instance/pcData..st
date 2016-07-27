writing xml
pcData: aString
	self writeIndent.
	self writeXmlEncoded: aString.
	self cr.