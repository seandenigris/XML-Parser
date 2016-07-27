tests
test5elementConstructors
	| noAttributes attributes str element |

	noAttributes := OrderPreservingDictionary new.
	self
		assertElement: (XMLElement named: 'foo')
		hasName: 'foo'
		attributes: noAttributes
		contentString: ''.

	attributes := OrderPreservingDictionary with: 'foo'->'test1' with: 'bar'->'test2'.
	self
		assertElement: (XMLElement name: 'foo' attributes: attributes)
		hasName: 'foo'
		attributes: attributes
		contentString: ''.

	str := self markupString.
	self
		assertElement: (XMLElement named: 'foo')
		hasName: 'foo'
		attributes: noAttributes
		contentString: ''.
	self
		assertElement: (XMLElement name: 'foo' attributes: attributes)
		hasName: 'foo'
		attributes: attributes
		contentString: ''.

	element := XMLElement
		name: 'prefix:foo'
		namespaceURI: 'http://foo'
		attributes: attributes.
	self
		assertElement: element hasName: 'prefix:foo' attributes: attributes contentString: '';
		assertNode: element hasPrefix: 'prefix' uri: 'http://foo'.