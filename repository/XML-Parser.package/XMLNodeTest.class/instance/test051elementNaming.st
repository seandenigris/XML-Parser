tests
test051elementNaming
	| element |

	element := XMLElement new.
	self
		assertElement: element name: '' localName: '';
		assertElement: (element name: 'foo') name: #foo localName: #foo;
		assertNode: element namespace: nil uri: nil.

	element namespace: 'bar' uri: 'http://bar'.
	self
		assertElement: element name: #bar:foo localName: #foo;
		assertNode: element namespace: 'bar' uri: 'http://bar'.

	element name: 'baz' namespace: 'foo' uri: 'http://foo'.
	self
		assertElement: element name: #foo:baz localName: #baz;
		assertNode: element namespace: 'foo' uri: 'http://foo'.