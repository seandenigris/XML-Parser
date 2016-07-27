namespaces
validateAttribute: anAttributeName
	self usesNamespaces ifFalse: [^ self].

	self scope
		validateAttribute: anAttributeName
		in: self attributes.