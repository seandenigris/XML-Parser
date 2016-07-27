tests
test051elementNaming
	| element |

	element := XMLElement new.
	self
		assertElement: element name: '' localName: '';
		assertElement: (element name: 'foo') name: 'foo' localName: 'foo';
		assertNode: element prefix: nil uri: nil.

	element prefix: 'bar' uri: 'http://bar'.
	self
		assertElement: element name: 'bar:foo' localName: 'foo';
		assertNode: element prefix: 'bar' uri: 'http://bar'.

	element name: 'foo:baz' namespaceURI: 'http://foo'.
	self
		assertElement: element name: 'foo:baz' localName: 'baz';
		assertNode: element prefix: 'foo' uri: 'http://foo'.