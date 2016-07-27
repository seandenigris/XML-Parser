tests
testExpandedName
	| element |

	element := self nodeClass named: 'test'.
	self assert: (element expandedName = 'test').

	element defaultNamespace: 'defaultNS'.
	self assert: (element expandedName = '{defaultNS}test').

	element name: 'prefix:test' namespaceURI: 'prefixNS'.
	self assert: (element expandedName = '{prefixNS}test').

	element
		defaultNamespace: '';
		name: 'test'.
	self assert: (element expandedName = 'test').