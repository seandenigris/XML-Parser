tests
test041namespaces
	| node ns uri |

	node := XMLElement new.
	ns := 'foo'.
	uri := 'http://foo'.
	self
		assertNode: node namespace: nil uri: nil;
		assertNode: (node prefix: ns uri: uri) namespace: ns uri: uri.