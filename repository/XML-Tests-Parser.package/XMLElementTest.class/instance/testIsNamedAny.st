tests
testIsNamedAny
	| element |

	element := self nodeClass named: 'one'.
	self
		assert: (element isNamedAny: #('two' 'one' 'three'));
		deny: (element isNamedAny: #('two' 'three')).
	element name: 'one:two' namespaceURI: 'testNS'.
	self
		assert: (element isNamedAny: #('one' 'one:two' 'three'));
		assert: (element isNamedAny: #('one' 'two' 'three'));
		deny: (element isNamedAny: #('one' 'three')).