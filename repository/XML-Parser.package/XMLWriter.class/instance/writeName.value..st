private
writeName: aName value: aValue
	self hasTrailingWhitespace
		ifFalse: [self space].

	self
		writeName: aName;
		eq;
		writeXmlEncodedString: aValue.