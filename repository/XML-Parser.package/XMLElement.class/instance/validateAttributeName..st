private
validateAttributeName: anAttributeName
	self usesNamespaces ifFalse: [^ self].

	self namespaceScope
		validatePrefixedAttributeName: anAttributeName
		in: self attributeNodes attributesByName.