accessing
resolvePrefix: aPrefix ifUnmapped: aBlock
	"Retrieve the URI of the given namespace prefix, if it is defined. 
	A nil namespace returns the default namespace. 
	If no namespace can be found the value of the block is returned"

	^ (aPrefix isEmptyOrNil or: [aPrefix = 'xmlns'])
		ifTrue: [self defaultNamespace]
		ifFalse: [self prefixMappings at: aPrefix ifAbsent: aBlock]