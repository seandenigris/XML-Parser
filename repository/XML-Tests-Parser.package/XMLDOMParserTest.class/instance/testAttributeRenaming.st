tests
testAttributeRenaming
	| doc person |

	doc := XMLDOMParser parse: self addressBookXML.
	person := doc findElementNamed: 'person'.
	(person attributeNodeAt: 'employee-number') name: 'first-name'.
	self
		assert: person attributeNodes size = 2;
		assert: (person attributeAt: 'first-name') = 'A0000';
		assert: (person attributeAt: 'family-name') = 'Gates'.
	self
		should: [(person attributeNodeAt: 'family-name') name: 'undeclared:family-name']
		raise: XMLNamespaceException.
	