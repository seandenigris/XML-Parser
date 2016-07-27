validation
validateStartTag: aStartTag prefix: aPrefix attributes: anAttributeDictionary namespaces: aNamespaceDictionary
	self usesNamespaces
		ifTrue: [
			self scopeAllocator enterScope.
			self declareNamespaces: aNamespaceDictionary.
		aPrefix ifNotEmpty: [
			self scopeAllocator
				validatePrefix: aPrefix
				ofElementName: aStartTag].
		self scopeAllocator validatePrefixedAttributeNames: anAttributeDictionary].

	self isValidating
		ifTrue: [
			self elementNester totalOpen > 1
				ifFalse: [self validateRootElement: aStartTag].
		
			self validator
				validateStartTag: aStartTag
				attributes: anAttributeDictionary].