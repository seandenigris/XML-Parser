instance creation
newElementWithAttributes
	| element |

	element :=
		XMLElement
			name: 'test'
			namespaces: (Array with: '' -> 'defaultNS' with: 'prefix' -> 'testNS').
	element attributeNodes
		add: (XMLAttribute name: 'one' value: 'two');
		add: (XMLAttribute name: 'three' value: 'four');
		add: (XMLAttribute name: 'prefix:three' value: 'five');
		add: (XMLAttribute name: 'prefix:six' value: 'seven').
	^ element.