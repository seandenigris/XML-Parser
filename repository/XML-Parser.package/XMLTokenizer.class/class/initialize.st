class initialization
initialize
	"self initialize"

	CharEscapes := CharacterSet newFrom: #( $& $" $' $> $< ).
	(LiteralChars := CharacterSet new)
		addAll: #( $: $- $: $= $.);
		addAll: ($a to: $z);
		addAll: ($A to: $Z);
		addAll: ($0 to: $9).

	self
		initializeNameStartChars;
		initializeAdditionalNameChars.