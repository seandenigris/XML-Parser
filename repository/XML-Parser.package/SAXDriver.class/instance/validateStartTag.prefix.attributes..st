namespaces
validateStartTag: aLocalName prefix: aPrefix attributes: attributeList
	(aPrefix isNil or: [self nestedScopes isMappedPrefix: aPrefix])
		ifFalse: [self errorBadPrefix: aPrefix inStartTag: aLocalName].

	self validatesAttributes
		ifTrue: [self nestedScopes validateAttributes: attributeList].