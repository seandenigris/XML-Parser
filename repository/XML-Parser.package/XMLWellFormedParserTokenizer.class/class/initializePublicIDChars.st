class initialization
initializePublicIDChars
	"PubidChar ::= #x20 | #xD | #xA | [a-zA-Z0-9] | [-'()+,./:=?;!*#@$_%]"

	(PublicIDChars := BitmapCharacterSet new)
		add: 16r20 asCharacter;
		add: 16r0D asCharacter;
		add: 16r0A asCharacter;
		addRangeFrom: $a to: $z;
		addRangeFrom: $A to: $Z;
		addRangeFrom: $0 to: $9;
		addAll: '-''()+,./:=?;!*#@$_%'