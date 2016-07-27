class initialization
initialize
	"self initialize"

	(UnreservedCharacters := BitmapCharacterSet new)
		addAll: ($a to: $z);
		addAll: ($A to: $Z);
		addAll: ($0 to: $9);
		addAll: '-._~'