tests
testUndeclaringElementPrefixes
	| document person |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	self
		shouldnt: [document root undeclarePrefix: 'ps']
		raise: XMLNamespaceException.
	self
		should: [document root undeclarePrefix: 'book']
		raise: XMLNamespaceException.

	person := document findElementNamed: 'person'.
	self
		shouldnt: [person undeclarePrefix: 'book']
		raise: XMLNamespaceException.
	self
		should: [person undeclarePrefix: 'ps']
		raise: XMLNamespaceException.