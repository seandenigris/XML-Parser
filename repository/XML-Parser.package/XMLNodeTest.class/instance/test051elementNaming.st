tests
test051elementNaming
	| element |

	element := XMLElement new.
	self
		assertElement: element hasName: '' localName: '';
		assertElement: (element name: 'foo') hasName: 'foo' localName: 'foo';
		assertNode: element hasPrefix: '' uri: ''.

	element name: 'bar:foo' namespaceURI: 'http://bar'.
	self
		assertElement: element hasName: 'bar:foo' localName: 'foo';
		assertNode: element hasPrefix: 'bar' uri: 'http://bar'.