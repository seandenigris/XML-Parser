tests
test051elementNaming
	| element |

	element := XMLElement new.
	self
		assertElement: element name: '' localName: '';
		assertElement: (element name: 'foo') name: 'foo' localName: 'foo';
		assertNode: element prefix: '' uri: ''.

	element name: 'bar:foo' namespaceURI: 'http://bar'.
	self
		assertElement: element name: 'bar:foo' localName: 'foo';
		assertNode: element prefix: 'bar' uri: 'http://bar'.