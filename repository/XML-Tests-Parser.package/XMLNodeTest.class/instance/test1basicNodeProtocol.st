tests
test1basicNodeProtocol
	| node parent |

	node := self nodeClass new.
	self
		assertNode: node hasTypes: self nodeTypes;
		deny: node hasChildren;
		deny: node hasParent;
		assert: node nextNode isNil;
		assert: node previousNode isNil;
		assert: node contentString isEmpty.

	parent := self nodeClass new.
	node parent: parent.
	self
		assert: node hasParent;
		assert: node parent == parent.