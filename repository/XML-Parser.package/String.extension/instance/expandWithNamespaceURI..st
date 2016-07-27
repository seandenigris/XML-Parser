*XML-Parser
expandWithNamespaceURI: aNamespaceUri
	^ aNamespaceUri
		ifEmpty: [self]
		ifNotEmpty: [((aNamespaceUri copyWithFirst: ${) copyWith: $}), self]