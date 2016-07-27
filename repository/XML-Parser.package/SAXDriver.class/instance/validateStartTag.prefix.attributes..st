namespaces
validateStartTag: aStartTag prefix: aPrefix attributes: attributeList
	(aPrefix isNil or: [self nestedScopes isMappedPrefix: aPrefix])
		ifFalse: [self errorBadPrefix: aPrefix inStartTag: aStartTag].

	self validatesAttributes
		ifTrue: [self nestedScopes validateAttributes: attributeList].