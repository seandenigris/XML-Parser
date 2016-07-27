resolving
resolvePrefixesOfNamespaceURI: aURI
	| prefixes |

	prefixes := Set new.
	aURI = self xmlNamespaceURI
		ifTrue: [prefixes add: 'xml'] "cannot be aliased"
		ifFalse: [
			aURI = self xmlnsNamespaceURI
				ifTrue: [prefixes add: 'xmlns'] "cannot be aliased"
				ifFalse: [
					self prefixesAndURIsDo: [:prefix :uri |
						uri = aURI
							ifTrue: [prefixes add: prefix]]]].
	^ prefixes.