namespaces
validateName
	(self usesNamespaces and: [self hasPrefix])
		ifTrue: [self scope validatePrefix: self prefix]