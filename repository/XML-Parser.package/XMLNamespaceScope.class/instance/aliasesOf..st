accessing
aliasesOf: aPrefix
	"Locate all prefixes that alias the URI of the given prefix."
	| uri |

	uri := self
		resolvePrefix: aPrefix
		ifUnmapped: [self errorUndefinedAttributePrefix: aPrefix asString].

	^ self mappedPrefixes keys select: [:each |
		self isPrefix: each mappedTo: uri].