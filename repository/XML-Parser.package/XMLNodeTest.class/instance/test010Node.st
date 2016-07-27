tests
test010node
	| node parent |

	node := XMLMockNode new.
	self
		assert: node isEmpty;
		assert:
			(#(isAttribute isCData isComment isContentNode isDocument
				isElement isPI isStringNode hasParent notEmpty)
					noneSatisfy: [:each | node perform: each]);
		assert:
			(#(nextNode previousNode parent)
				allSatisfy: [:each | (node perform: each) isNil]);
		assert: node asString = (node class asString, '(', node identityHash asString, ') ');
		assert: node contentString isEmpty.

	parent := XMLMockNode new.
	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent = parent.