namespaces
validateStartTag: aStartTag prefix: aPrefix attributes: attributeList
	(aPrefix isEmpty or: [self scopeManager includesPrefix: aPrefix])
		ifFalse: [self errorBadPrefix: aPrefix inStartTag: aStartTag].

	self validatesAttributes
		ifTrue: [self scopeManager validatePrefixedAttributeNames: attributeList].