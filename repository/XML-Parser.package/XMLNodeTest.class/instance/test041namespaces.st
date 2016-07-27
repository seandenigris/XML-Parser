tests
test041namespaces
	| node ns uri |

	node := XMLElement new.
	ns := 'foo'.
	uri := 'http://foo'.
	self
		assertNode: node prefix: nil uri: nil;
		assertNode: (node prefix: ns uri: uri) prefix: ns uri: uri.
	self should: [node prefix: 'badprefix'] raise: XMLNamespaceException.