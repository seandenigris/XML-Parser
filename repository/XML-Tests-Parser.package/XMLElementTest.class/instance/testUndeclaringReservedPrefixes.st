tests
testUndeclaringReservedPrefixes
	| element |

	element :=
		XMLElement
			name: 'element'
			namespaces: (Array with: 'xml' -> XMLNamespaceScope xmlNamespaceURI).

	self
		shouldnt: [element undeclarePrefix: 'xml']
		raise: XMLNamespaceException.
	self
		should: [element undeclarePrefix: 'xml']
		raise: XMLNamespaceException.
	self
		should: [element undeclarePrefix: 'xmlns']
		raise: XMLNamespaceException.