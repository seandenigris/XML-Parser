tests
test010node
	| node parent testingMessages accessors |

	node := XMLNode new.
	testingMessages := (XMLNode methodsInCategory: 'testing') copyWithout: 'isEmpty'.
	accessors := #(nextNode previousNode parent).
	self
		assert: node isEmpty;
		deny: (testingMessages anySatisfy: [:each | node perform: each]);
		deny: (accessors anySatisfy: [:each | (node perform: each) notNil]).

	parent := XMLNode new.
	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent = parent.

	self should: [node addContent: ''] raise: SAXParseException.