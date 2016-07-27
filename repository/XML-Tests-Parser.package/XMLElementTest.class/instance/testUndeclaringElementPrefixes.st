tests
testUndeclaringElementPrefixes
	| element |

	element :=
		XMLElement
			name: 'used:element'
			namespaces: (Array with: '' -> 'defaultNS' with: 'unused' -> 'unusedNS' with: 'used' -> 'usedNS').

	self
		shouldnt: [element undeclarePrefix: '']
		raise: XMLNamespaceException.
	self
		shouldnt: [element undeclarePrefix: 'unused']
		raise: XMLNamespaceException.
	self
		should: [element undeclarePrefix: 'used']
		raise: XMLNamespaceException.