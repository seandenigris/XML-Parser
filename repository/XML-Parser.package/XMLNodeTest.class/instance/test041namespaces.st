tests
test041namespaces
	| node ns nsUri |

	node := XMLNodeWithElements new.
	ns := 'foo'.
	nsUri := 'http://www.example.com/foo'.
	self
		assertNode: node namespace: nil uri: nil;
		assertNode: (node namespace: ns uri: nsUri) namespace: ns uri: nsUri.