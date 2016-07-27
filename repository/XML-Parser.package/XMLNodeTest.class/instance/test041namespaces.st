tests
test041namespaces
	| node |

	node := XMLElement new.
	self
		assertNode: node hasPrefix: '' uri: '';
		assertNode: (node name: 'foo:name' namespaceURI: 'http://foo') hasPrefix: 'foo' uri: 'http://foo'.

	node declarePrefix: 'bar' uri: 'http://bar'.
	self assertNode: (node prefix: 'bar') hasPrefix: 'bar' uri: 'http://bar'.

	self should: [node prefix: 'badprefix'] raise: XMLNamespaceException.