tests
testNameNamespaces
	| element |
	
	element := self nodeClass name: 'one' namespaces: self namespaces.
	self assert: element namespaceURI = 'defaultNS'.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	element := self nodeClass name: 'two' namespaces: self namespaces associations.
	self assert: element namespaceURI = 'defaultNS'.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element isDeclaredPrefix: prefix uri: uri)].

	self
		should: [
			self nodeClass
				name: 'undeclared:three'
				namespaces: self namespaces]
		raise: XMLNamespaceException.