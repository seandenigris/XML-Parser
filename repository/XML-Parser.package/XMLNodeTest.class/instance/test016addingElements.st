tests
test016addingElements
	| node elements children |

	node := XMLMockNodeWithElements new.
	elements := self newElementsNamed: #('foo' 'bar' 'baz').
	node addNodes: (self intersperseWithNodes: elements).
	self
		assert: node hasElements;
		assert: node firstElement = elements first;
		assert: node elements = elements;
		assert: (elements allSatisfy: [:each | node includesElement: each name]).