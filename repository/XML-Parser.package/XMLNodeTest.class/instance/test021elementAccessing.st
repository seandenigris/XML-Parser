tests
test021elementAccessing
	| node nodes elements |

	node := XMLMockNodeWithElements new.
	elements := self newElementsNamed: #('foo' 'bar' 'prefix:foo' 'baz').
	node addNodes: (self intersperseWithNodes: elements).
	self
		assert: (node elementAt: 'absent') isNil;
		assert: (node elementAt: 'absent' ifAbsent: ['absent']) = 'absent';
		assert: (node elementsAt: 'absent') isEmpty;
		assert: (node elementAtAny: #('absent')) isNil;
		assert: (node elementAtAny: #('absent') ifAbsent: ['absent']) = 'absent';
		assert: (node elementAt: 'foo') = elements first;
		assert: (node elementAt: 'bar') = elements second;
		assert: (node elementsAt: 'foo') = ((elements first: 3) copyWithout: elements second);
		assert: (node elementAt: 'prefix:foo') = elements third;
		assert: (node elementsAt: 'prefix:foo') = (XMLOrderedList with: elements third);
		assert: (node elementAtAny: #('bar' 'prefix:foo')) = elements second;
		assert: (node elementAtAny: #('absent' 'baz')) = elements last.