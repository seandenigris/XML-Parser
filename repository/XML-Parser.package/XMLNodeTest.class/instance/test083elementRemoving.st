tests
test083elementRemoving
	| node nodes elements |

	node := XMLNodeWithElements new.
	elements := self newElementsNamed: #(foo prefix:bar bar baz).
	node addNodes: (self interspersedWithNodes: elements).
	self
		assert: (node removeNode: elements first) = elements first;
		assert: node elements = elements allButFirst;
		assert: (node elementAt: #foo) isNil;
		assert: (node elementsAt: #foo) isEmpty;
		assert: (node removeNode: elements second) = elements second;
		assert: node elements = (elements last: 2);
		assert: (node elementAt: #bar) = elements third;
		assert: (node elementsAt: #bar) = (OrderedCollection with: elements third);
		assert: (node removeNode: elements third) = elements third;
		assert: node elements = (elements last: 1);
		assert: (node elementAt: #bar) isNil;
		assert: (node elementsAt: #bar) isEmpty;
		assert: node topElement = elements last.