class initialization
initializeEncodingNameChars
	(EncodingNameChars := CharacterSet new)
		addAll: ($a to: $z);
		addAll: ($A to: $Z);
		addAll: ($0 to: $9);
		add: $-;
		add: $_;
		add: $.