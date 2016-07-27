private
validateAttributes
	self usesNamespaces
		ifFalse: [^ self].

	self namespaceScope validateAttributePrefixes: self attributeNodes attributesByName.