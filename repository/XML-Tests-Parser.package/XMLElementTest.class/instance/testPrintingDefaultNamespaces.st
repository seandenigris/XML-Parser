tests
testPrintingDefaultNamespaces
	| element |

	element :=
		XMLElement
			name: 'element'
			namespaceURI: 'default'.
	element addNode:
		((XMLElement
			name: 'element'
			namespaceURI: '')
			addElement: 'empty';
			yourself).

	self assert:
		element printString =
			('<element xmlns="default">',
			'<element xmlns=""><empty /></element>',
			'</element>').