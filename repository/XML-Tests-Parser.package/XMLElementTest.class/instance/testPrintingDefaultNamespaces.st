tests
testPrintingDefaultNamespaces
	| element |

	element :=
		XMLElement
			name: 'element'
			namespaceURI: 'default'.
	element addElement:
		((XMLElement
			name: 'element'
			namespaceURI: '')
			addElement: (XMLElement name: 'empty');
			yourself).

	self assert:
		element printString =
			('<element xmlns="default">',
			'<element xmlns=""><empty /></element>',
			'</element>').