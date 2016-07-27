tests
testUndeclaringAttributePrefixes
	| element |

	element :=
		XMLElement
			name: 'element'
			namespaces: (Array with: '' -> 'defaultNS' with: 'unused' -> 'unusedNS' with: 'used' -> 'usedNS')
			attributes: (Array with: 'name' -> 'value' with: 'used:name' -> 'value').

	self
		shouldnt: [element undeclarePrefix: '']
		raise: XMLNamespaceException.
	self
		shouldnt: [element undeclarePrefix: 'unused']
		raise: XMLNamespaceException.
	self
		should: [element undeclarePrefix: 'used']
		raise: XMLNamespaceException.