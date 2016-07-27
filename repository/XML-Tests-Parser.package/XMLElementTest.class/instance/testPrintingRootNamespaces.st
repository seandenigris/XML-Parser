tests
testPrintingRootNamespaces
	| element |

	element :=
		XMLElement
			name: 'used:element'
			namespaces: (Array with: '' -> 'defaultNS' with: 'used' -> 'usedNS').
	element addElement: (XMLElement name: 'empty').

	self assert:
		element printString =
			('<used:element xmlns="defaultNS" xmlns:used="usedNS">',
			'<empty />',
			'</used:element>').