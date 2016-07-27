tests
testParsingNamespaces
	| document people person |

	document :=
		XMLDOMParser parse:
			'<root xmlns="defaultNS" xmlns:ps="personNS">',
			self addressBookXML,
			'</root>'.

	people := document allElementsNamed: 'person' namespaceURI: 'defaultNS'.
	self assert: people size = 4.
	self assert:
		(document allElementsNamed: 'person' namespaceURI: 'undeclaredNS') isEmpty.

	(person := people third) prefix: 'ps'.
	self assert:
		person == (document findElementNamed: 'person' namespaceURI: 'personNS').
	self assert:
		(people copyWithout: person) =
			((document findElementNamed: 'addressbook') nodesSelect: [:each |
				each isElement and: [each namespaceURI = 'defaultNS']]).
	self assert:
		people second ==
			((document findElementNamed: 'addressbook') nodesDetect: [:each |
				each isElement and: [(each attributeAt: 'family-name') = 'Brown']]).
	self assert:
		(document
			findElementNamed: 'person'
			namespaceURI: 'defaultNS'
			with: [:each | (each attributeAt: 'employee-number') = 'A7987']) == people last.