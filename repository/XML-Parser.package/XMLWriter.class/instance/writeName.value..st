private
writeName: aName value: aValue
	(self atStart or: [self hasTrailingWhitespace])
		ifFalse: [self stream space].

	self
		writeName: aName;
		nextPut: $=;
		writeXmlEncodedString: aValue.