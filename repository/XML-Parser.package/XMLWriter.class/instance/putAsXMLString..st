private
putAsXMLString: aValue
	self stream nextPut: $".
	self writeXmlEncoded: aValue.
	self stream nextPut: $"