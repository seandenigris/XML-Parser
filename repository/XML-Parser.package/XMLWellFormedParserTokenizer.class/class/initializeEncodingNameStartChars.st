class initialization
initializeEncodingNameStartChars
	"Character>>isLetter is not used because it may return true for non-ASCII
	letters depending on the locale.
	
	EncName ::= [A-Za-z] ([A-Za-z0-9._] | '-')*"

	(EncodingNameStartChars := BitmapCharacterSet new)
		addRangeFrom: $a to: $z;
		addRangeFrom: $A to: $Z