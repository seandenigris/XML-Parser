class initialization
initialize
	"self initialize"

	(LiteralEscapes := IdentityDictionary new)
		at: $" put: '&#34;';
		at: $' put: '&#39;'