testing
hasNamespaces
	^ defaultNamespace notNil or: [prefixMappings notNil and: [prefixMappings notEmpty]]