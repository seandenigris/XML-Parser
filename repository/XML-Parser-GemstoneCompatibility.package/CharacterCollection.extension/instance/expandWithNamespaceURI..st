*XML-Parser-GemstoneCompatibility
expandWithNamespaceURI: aNamespaceUri
	^ aNamespaceUri
		ifEmpty: [self]
		ifNotEmpty: [((aNamespaceUri copyWithFirst: ${) copyWith: $}), self]