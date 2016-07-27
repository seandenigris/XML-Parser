tests
test010node
	| node parent testingMessages accessors |

	node := XMLMockNode new.
	testingMessages := #(isAttribute isContentNode isDocument isElement isPI isStringNode).
	accessors := #(nextNode previousNode parent).
	self
		assert: node isEmpty;
		assert: (testingMessages noneSatisfy: [:each | node perform: each]);
		assert: (accessors allSatisfy: [:each | (node perform: each) isNil]).

	parent := XMLMockNode new.
	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent = parent.