tests
test010node
	| node parent testingMessages accessors |

	node := XMLNode new.
	testingMessages := (XMLNode methodsInCategory: 'testing') copyWithout: 'isEmpty'.
	accessors := #(nextNode previousNode parent).
	self
		assert: node isEmpty;
		assert: (testingMessages noneSatisfy: [:each | node perform: each]);
		assert: (accessors allSatisfy: [:each | (node perform: each) isNil]).

	parent := XMLNode new.
	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent = parent.