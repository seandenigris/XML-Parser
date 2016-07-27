tests
test041namespaces
	| node |

	node := XMLElement new.
	self
		assertNode: node prefix: '' uri: '';
		assertNode: (node name: 'foo:name' namespaceURI: 'http://foo') prefix: 'foo' uri: 'http://foo'.

	node declarePrefix: 'bar' uri: 'http://bar'.
	self assertNode: (node prefix: 'bar') prefix: 'bar' uri: 'http://bar'.

	self should: [node prefix: 'badprefix'] raise: XMLNamespaceException.