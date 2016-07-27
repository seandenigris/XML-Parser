tests
test054elementConstructors
	| noAttributes attributes element |

	noAttributes := Dictionary new.
	attributes := Dictionary with: #attr1->'value1' with: 'attr2'->'value2'.

	self
		assertElement: (XMLElement named: #foo)
		name: #foo
		attributes: noAttributes
		contentString: ''.
	self
		assertElement: (XMLElement named: #foo attributes: attributes)
		name: #foo
		attributes: attributes
		contentString: ''.
	self
		assertElement: (XMLElement named: #foo contentString: 'test<>&"')
		name: #foo
		attributes: noAttributes
		contentString: 'test<>&"'.
	self
		assertElement: (XMLElement named: #foo attributes: attributes contentString: 'test<>&"')
		name: #foo
		attributes: attributes
		contentString: 'test<>&"'.

	element := XMLElement named: #foo namespace: 'prefix' uri: 'http://foo' attributes: attributes.
	self
		assertElement: element name: #prefix:foo attributes: attributes contentString: '';
		assertNode: element namespace: 'prefix' uri: 'http://foo'.