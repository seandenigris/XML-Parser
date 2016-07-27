class initialization
initializeEncodingNameChars
	"EncName ::= [A-Za-z] ([A-Za-z0-9._] | '-')*"

	(EncodingNameChars := BitmapCharacterSet new)
		addRangeFrom: $a to: $z;
		addRangeFrom: $A to: $Z;
		addRangeFrom: $0 to: $9;
		addAll: '-_.'