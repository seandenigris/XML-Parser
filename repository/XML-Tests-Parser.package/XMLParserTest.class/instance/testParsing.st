tests
testParsing
	| document root firstPerson persons |
	"self debug: #testParsing"

	document := XMLDOMParser parse: self addressBookXML.
	self assert: (document isKindOf: XMLDocument).
	root := document root.
	self assert: (root class == XMLElement).

	self assert:
		(root allNodesDetect: [:each |
			each isElement
				and: [each isNamedAny: #('AddressBook' 'addressbook')]]) == root.
	self assert: (root findElementNamed: 'addressbook') == root.

	persons := 	root allNodesSelect: [:each |
			each isElement and: [each isNamedAny: #('Person' 'person')]].
	self assert: persons size = 4.
	root allElementsNamed: 'person' do: [:p |
		self assert: (persons includes: p).
		persons remove: p].
	self assert: persons isEmpty.

	firstPerson := root findElementNamed: 'person'.
	self assert:
		(firstPerson allElements collect: [:each | each name]) asArray =
			#('person' 'contact-info' 'address' 'job-info' 'manager').
	self assert:
		(firstPerson nodesCollect: [:each | each name]) asArray =
			#('contact-info' 'address' 'job-info' 'manager').
	self assert: (firstPerson attributeAt: 'employee-number') = 'A0000'.
	self assert: (firstPerson attributeAt: 'family-name') = 'Gates'.
	self assert: (firstPerson attributeAt: 'first-name') = 'Bob'.
	self assert: firstPerson attributeNames asArray =
		#('employee-number' 'family-name' 'first-name').
	self assert: firstPerson attributeAssociations asArray =
		{('employee-number'->'A0000'). ('family-name'->'Gates'). ('first-name'->'Bob').}.