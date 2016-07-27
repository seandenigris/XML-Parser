tests
testParsing
	| xmlDocument root firstPerson numberOfPersons |
	"self debug: #testParsing"

	xmlDocument := XMLDOMParser parseDocumentFrom: self addressBookXML readStream.
	self assert: (xmlDocument isKindOf: XMLDocument).
	root := xmlDocument root.
	self assert: (root class == XMLElement).
	
	"the tag has to be a symbol!"
	self assert: (root firstTagNamed: 'person') isNil.
	self assert: (root firstTagNamed: 'addressbook') isNil.

	self assert: (root firstTagNamed: #addressbook) == root.

	numberOfPersons := 0.
	root tagsNamed: #person do: [:p | numberOfPersons := numberOfPersons + 1].
	self assert: numberOfPersons = 4.

	firstPerson := root firstTagNamed: #person.
	self assert: (firstPerson attributeAt: #'employee-number') = 'A0000'.
	self assert: (firstPerson attributeAt: #'family-name') = 'Gates'.
	self assert: (firstPerson attributeAt: #'first-name') = 'Bob'.