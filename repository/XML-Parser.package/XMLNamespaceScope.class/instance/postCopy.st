copying
postCopy
	defaultNamespace ifNotNil: [defaultNamespace := defaultNamespace copy].
	prefixMappings ifNotNil: [prefixMappings := prefixMappings copy].