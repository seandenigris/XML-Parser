class initialization
initializeNameChars
	"This character set is built from the range below for 'NameStartChars' plus
	the characters from NonNameStartCharNameChars. 
	
	NameStartChar ::=
		':' | [A-Z] | '_' | [a-z] | [#xC0-#xD6] | [#xD8-#xF6] | [#xF8-#x2FF] |
		[#x370-#x37D] | [#x37F-#x1FFF] | [#x200C-#x200D] | [#x2070-#x218F] |
		[#x2C00-#x2FEF] | [#x3001-#xD7FF] | [#xF900-#xFDCF] | [#xFDF0-#xFFFD] |
		[#x10000-#xEFFFF]
	NameChar ::=
		NameStartChar | '-' | '.' | [0-9] | #xB7 | [#x0300-#x036F] |
		[#x203F-#x2040]"

	(NameChars := BitmapCharacterSet new: 16rF0000)
		add: $:;
		addRangeFrom: $A to: $Z;
		add: $_;
		addRangeFrom: $a to: $z;
		addRangeFrom: 16rC0 asCharacter to: 16rD6 asCharacter;
		addRangeFrom: 16rD8 asCharacter to: 16rF6 asCharacter;
		addRangeFrom: 16rF8 asCharacter to: 16r2FF asCharacter;
		addRangeFrom: 16r370 asCharacter to: 16r37D asCharacter;
		addRangeFrom: 16r37F asCharacter to: 16r1FFF asCharacter;
		addRangeFrom: 16r200C asCharacter to: 16r200D asCharacter;
		addRangeFrom: 16r2070 asCharacter to: 16r218F asCharacter;
		addRangeFrom: 16r2C00 asCharacter to: 16r2FEF asCharacter;
		addRangeFrom: 16r3001 asCharacter to: 16rD7FF asCharacter;
		addRangeFrom: 16rF900 asCharacter to: 16rFDCF asCharacter;
		addRangeFrom: 16rFDF0 asCharacter to: 16rFFFD asCharacter;
		addRangeFrom: 16r10000 asCharacter to: 16rEFFFF asCharacter;
		addAll: NonNameStartCharNameChars