tests
test2elementNaming
	| element |

	element := XMLElement new.
	self
		assertNode: element hasName: '' namespaceURI: '';
		assertNode: (element name: 'testElement') hasName: 'testElement' namespaceURI: ''.
	self
		assertNode: (element name: 'testPrefix:testElement' namespaceURI: 'http://test/')
		hasName: 'testPrefix:testElement'
		namespaceURI: 'http://test/'.