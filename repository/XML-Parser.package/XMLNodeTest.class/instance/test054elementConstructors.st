tests
test054elementConstructors
	| noAttributes attributes str element |

	noAttributes := Dictionary new.
	self
		assertElement: (XMLElement named: 'foo')
		name: 'foo'
		attributes: noAttributes
		contentString: ''.

	attributes := Dictionary with: 'foo'->'test1' with: 'bar'->'test2'.
	self
		assertElement: (XMLElement named: 'foo' attributes: attributes)
		name: 'foo'
		attributes: attributes
		contentString: ''.

	str := self markupString.
	self
		assertElement: (XMLElement named: 'foo')
		name: 'foo'
		attributes: noAttributes
		contentString: ''.
	self
		assertElement: (XMLElement named: 'foo' attributes: attributes)
		name: 'foo'
		attributes: attributes
		contentString: ''.

	element := XMLElement
		named: 'prefix:foo'
		namespaceURI: 'http://foo'
		attributes: attributes.
	self
		assertElement: element name: 'prefix:foo' attributes: attributes contentString: '';
		assertNode: element prefix: 'prefix' uri: 'http://foo'.