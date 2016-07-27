errors
errorAttribute: anAttribute isAliasFor: anAlias withURI: aNamespaceUri
	self error: ('Attributes ', anAttribute, ' and ',
		anAlias, ' are aliased to namespace ', aNamespaceUri)