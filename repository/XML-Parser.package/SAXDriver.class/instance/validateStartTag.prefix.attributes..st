namespaces
validateStartTag: aStartTag prefix: aPrefix attributes: anAttributeDictionary
	aPrefix ifNotEmpty: [
		self scopeManager
			validatePrefix: aPrefix
			ofElementName: aStartTag].

	self scopeManager validatePrefixedAttributeNames: anAttributeDictionary.