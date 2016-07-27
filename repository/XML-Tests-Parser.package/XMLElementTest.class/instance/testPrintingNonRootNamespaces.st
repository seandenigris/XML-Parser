tests
testPrintingNonRootNamespaces
	| element |

	element :=
		XMLElement
			name: 'element'.
	element addElement:
		(XMLElement
			name: 'used:empty'
			namespaces: (Array with: '' -> 'defaultNS' with: 'used' -> 'usedNS')).

	self assert:
		element printString =
			('<element>',
			'<used:empty xmlns="defaultNS" xmlns:used="usedNS" />',
			'</element>').