tests
test1basicNodeProtocol
	| node parent |

	node := XMLMockNode new.
	self
		assertNode: node hasType: nil;
		deny: node hasChildren;
		assert: (#(nextNode previousNode parent) allSatisfy: [:each | (node perform: each) isNil]);
		assert: node printString = (node class name asString, '(', node identityHash printString, ') ');
		assert: node contentString isEmpty.

	parent := XMLMockNode new.
	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent == parent.