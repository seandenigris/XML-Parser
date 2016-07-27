tests
testUndeclaringPrefixes
	| document |

	document := XMLDOMParser parse: self addressBookNamespacedXML.
	self
		shouldnt: [document root undeclarePrefix: 'book']
		raise: XMLNamespaceException.
	self
		should: [document root undeclarePrefix: 'undeclared']
		raise: XMLNamespaceException.
	self
		should: [document root undeclarePrefix: 'xml']
		raise: XMLNamespaceException.
	self
		should: [document root undeclarePrefix: 'xmlns']
		raise: XMLNamespaceException.