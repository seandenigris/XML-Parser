tests
test07elementAccessing
	| node elements |

	node := self nodeClass new.
	elements := self newElementsNamed: #('testOne' 'testTwo' 'testPrefix:testOne' 'testThree').
	node addNodes: (self intersperseWithNodes: elements).
	self
		assert: (node elementAt: 'absent') isNil;
		assert: (node elementAt: 'absent' ifAbsent: ['absent']) = 'absent';
		assert: (node elementsAt: 'absent') isEmpty;
		assert: (node elementAt: 'testOne') == elements first;
		assert: (node elementAt: 'testTwo') == elements second;
		assert: (node elementsAt: 'testOne') = ((elements first: 3) copyWithout: elements second);
		assert: (node elementAt: 'testPrefix:testOne') == elements third;
		assert: (node elementsAt: 'testPrefix:testOne') = (XMLOrderedList with: elements third);
		assert: (node elementAt: 'testOne' namespaceURI: 'absent') isNil;
		assert: (node elementAt: 'absent' namespaceURI: 'http://testPrefix') isNil;
		assert: (node elementAt: 'testOne' namespaceURI: 'absent' ifAbsent: ['absent']) = 'absent';
		assert: (node elementAt: 'absent' namespaceURI: 'http://testPrefix' ifAbsent: ['absent']) = 'absent';
		assert: (node elementAt: 'testOne' namespaceURI: 'http://testPrefix') == elements third;
		assert: (node elementsAt: 'testOne' namespaceURI: 'absent') isEmpty;
		assert: (node elementsAt: 'absent' namespaceURI: 'http://testPrefix') isEmpty;
		assert: (node elementsAt: 'testOne' namespaceURI: 'http://testPrefix') = (elements copyFrom: 3 to: 3)