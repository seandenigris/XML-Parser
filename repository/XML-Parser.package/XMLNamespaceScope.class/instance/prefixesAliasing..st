accessing
prefixesAliasing: aPrefix
	"Locate all prefixes that map to the same URI the given prefix does."
	| uri |
	
	uri := self resolvePrefix: aPrefix ifUnmapped: [^ #()].

	^ (self prefixesMappedTo: uri) copyWithout: aPrefix