tests
test060addingElements
	| node elements children |

	node := XMLNodeWithElements new.
	elements := self newElementsNamed: #('foo' 'bar' 'baz').
	node addNodes: (self interspersedWithNodes: elements).
	self
		assert: node hasElements;
		assert: node topElement = elements first;
		assert: node elements = elements;
		assert: (elements allSatisfy: [:each | node includesElement: each name]).