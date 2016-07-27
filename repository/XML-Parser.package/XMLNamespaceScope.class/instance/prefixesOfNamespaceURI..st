resolving
prefixesOfNamespaceURI: aNamespaceUri
	| prefixes |

	prefixes := Set new.
	aNamespaceUri = self class xmlNamespaceURI
		ifTrue: [prefixes add: 'xml']
		ifFalse: [
			aNamespaceUri = self class xmlnsNamespaceURI
				ifTrue: [prefixes add: 'xmlns']
				ifFalse: [
					self prefixesAndURIsDo: [:prefix :uri |
						uri = aNamespaceUri
							ifTrue: [prefixes add: prefix]]]].
	^ prefixes.