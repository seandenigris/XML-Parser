tests
testParsing
	| xmlDocument root firstPerson numberOfPersons |
	"self debug: #testParsing"

	xmlDocument := XMLDOMParser parse: self addressBookXML.
	self assert: (xmlDocument isKindOf: XMLDocument).
	root := xmlDocument root.
	self assert: (root class == XMLElement).

	self assert: (root findElementNamed: 'person') notNil.
	self assert: (root findElementNamed: 'addressbook') notNil.

	self assert: (root findElementNamed: 'addressbook') == root.

	numberOfPersons := 0.
	root allElementsNamed: 'person' do: [:p | numberOfPersons := numberOfPersons + 1].
	self assert: numberOfPersons = 4.

	firstPerson := root findElementNamed: 'person'.
	self assert: (firstPerson attributeAt: 'employee-number') = 'A0000'.
	self assert: (firstPerson attributeAt: 'family-name') = 'Gates'.
	self assert: (firstPerson attributeAt: 'first-name') = 'Bob'.
	self assert: firstPerson attributeNames asArray =
		#('employee-number' 'family-name' 'first-name').
	self assert: firstPerson attributeAssociations asArray =
		{('employee-number'->'A0000'). ('family-name'->'Gates'). ('first-name'->'Bob').}.
