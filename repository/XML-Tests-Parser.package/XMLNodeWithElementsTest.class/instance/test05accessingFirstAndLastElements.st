tests
test05accessingFirstAndLastElements
	| node elements |

	node := self nodeClass new.
	self
		assert: node firstElement isNil;
		assert: node lastElement isNil.

	elements := self newElements: 3.
	node addNode: elements first.
	self
		assert: node firstElement == elements first;
		assert: node lastElement == elements first.

	node addNodes: elements allButFirst.
	self
		assert: node firstElement == elements first;
		assert: node lastElement == elements last.

	node removeNode: elements first.
	self
		assert: node firstElement == elements second;
		assert: node lastElement == elements last.

	node removeNodes.
	node addNodes: (self intersperseWithNodes: elements).
	self
		assert: node firstElement == elements first;
		assert: node lastElement == elements last.