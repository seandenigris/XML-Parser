namespaces
validateEndTag: localName prefix: prefix
	(prefix isNil or: [self nestedScopes isMappedPrefix: prefix])
		ifFalse: [self errorBadPrefix: prefix inEndTag: localName].