accessing
resolveNamespace: aNamespace ifUnbound: aBlock
	"Retrieve the URI of the given namespace prefix, if it is defined. 
	A nil namespace returns the default namespace. 
	If no namespace can be found the value of the block is returned"

	^ (aNamespace isEmptyOrNil or: [aNamespace = 'xmlns'])
		ifTrue: [self defaultNamespace]
		ifFalse: [self currentBindings at: aNamespace ifAbsent: aBlock]