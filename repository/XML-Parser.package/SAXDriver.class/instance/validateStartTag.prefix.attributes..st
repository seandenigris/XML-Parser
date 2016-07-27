namespaces
validateStartTag: aStartTag prefix: aPrefix attributes: anAttributeDictionary
	aPrefix ifNotEmpty: [
		self scopeAllocator
			validatePrefix: aPrefix
			ofElementName: aStartTag].

	self scopeAllocator validatePrefixedAttributeNames: anAttributeDictionary.