tests
testIsXMLQualifiedNameOrLocalName
	self
		assert: ('name' isXMLQualifiedName: 'name' orLocalName: 'name');
		assert: ('name' isXMLQualifiedName: 'prefix:name' orLocalName: 'name');
		assert: ('prefix:name' isXMLQualifiedName: 'prefix:name' orLocalName: 'name');
		deny: ('name' isXMLQualifiedName: 'different' orLocalName: 'different');
		deny: ('name' isXMLQualifiedName: 'prefix:different' orLocalName: 'different');
		deny: ('prefix:name' isXMLQualifiedName: 'prefix:different' orLocalName: 'different').