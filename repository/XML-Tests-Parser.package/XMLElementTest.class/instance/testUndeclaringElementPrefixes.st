tests
testUndeclaringElementPrefixes
	| element |

	element :=
		XMLElement
			name: 'outer'
			namespaces: (Array with: '' -> 'defaultNS' with: 'unused' -> 'unusedNS' with: 'used' -> 'usedNS').
	element addElementNamed: 'used:inner'.

	self
		shouldnt: [element undeclarePrefix: '']
		raise: XMLNamespaceException.
	self
		shouldnt: [element undeclarePrefix: 'unused']
		raise: XMLNamespaceException.
	element allElementsDo: [:each |
		self
			deny: (each isDeclaredPrefix: '');
			deny: (each isDeclaredPrefix: 'unused')].
	self
		should: [element undeclarePrefix: 'used']
		raise: XMLNamespaceException.