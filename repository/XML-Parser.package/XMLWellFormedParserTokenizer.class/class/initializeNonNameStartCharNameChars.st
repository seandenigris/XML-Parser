class initialization
initializeNonNameStartCharNameChars
	"This character set equals 'NameChar' except 'NameStartChar', which
	requires less memory than creating one for 'NameStartChar' but can
	still be used to test for illegal start chars in names.

	NameChar ::=
		NameStartChar | '-' | '.' | [0-9] | #xB7 | [#x0300-#x036F] |
		 [#x203F-#x2040]"

	(NonNameStartCharNameChars := BitmapCharacterSet new: 16r2041)
		add: $-;
		add: $.;
		addRangeFrom: $0 to: $9;
		add: 16rB7 asCharacter;
		addRangeFrom: 16r0300 asCharacter to: 16r036F asCharacter;
		addRangeFrom: 16r203F asCharacter to: 16r2040 asCharacter