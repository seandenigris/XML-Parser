tests
test03removingElements
	| node elements |

	node := self nodeClass new.
	elements := self newElementsNamed: #('testOne' 'testPrefix:testTwo' 'testTwo' 'testThree').
	node addNodes: (self intersperseWithNodes: elements).
	self
		assert: (node removeNode: elements first) == elements first;
		assert: node elements = elements allButFirst;
		assert: (node elementAt: 'testOne') isNil;
		assert: (node elementsAt: 'testOne') isEmpty;
		assert: (node removeNode: elements second) = elements second;
		assert: node elements = (elements last: 2);
		assert: (node elementAt: 'testTwo' namespaceURI: 'http://testPrefix') isNil;
		assert: (node elementsAt: 'testTwo' namespaceURI: 'http://testPrefix') isEmpty;
		assert: (node elementAt: 'testTwo') == elements third;
		assert: (node elementsAt: 'testTwo') = (XMLOrderedList with: elements third);
		assert: (node removeNode: elements third) == elements third;
		assert: node elements = (elements last: 1);
		assert: (node elementAt: 'bar') isNil;
		assert: (node elementsAt: 'bar') isEmpty;
		assert: node firstElement = elements last;
		assert: (node removeNode: elements last) = elements last;
		deny: node hasElements;
		assert: node firstElement isNil.