accessing
prefixesAliasing: aPrefix
	"Locate all prefixes that map to the same URI the given prefix does."
	| uri |

	uri := self
		resolvePrefix: aPrefix
		ifUnmapped: [self errorUnmappedPrefix: aPrefix].

	^ self mappedPrefixes select: [:each |
		(each ~= aPrefix)
			and: [self isPrefix: each mappedTo: uri]].