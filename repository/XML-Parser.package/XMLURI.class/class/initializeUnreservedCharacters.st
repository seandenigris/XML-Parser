class initialization
initializeUnreservedCharacters
	(UnreservedCharacters := BitmapCharacterSet new)
		addRangeFrom: $a to: $z;
		addRangeFrom: $A to: $Z;
		addRangeFrom: $0 to: $9;
		addAll: '-._~'