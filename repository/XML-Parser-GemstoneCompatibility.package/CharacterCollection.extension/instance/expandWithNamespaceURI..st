*XML-Parser-GemstoneCompatibility
expandWithNamespaceURI: aNamespaceUri
	"optimized"
	aNamespaceUri size > 0
		ifTrue: [^ ((aNamespaceUri copyWithFirst: ${) copyWith: $}), self]
		ifFalse: [^ self]