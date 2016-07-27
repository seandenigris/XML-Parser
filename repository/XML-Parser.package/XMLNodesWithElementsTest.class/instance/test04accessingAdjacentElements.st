tests
test04accessingAdjacentElements
	| node elements |

	node := XMLMockNodeWithElements new.
	elements := self newElements: 3.
	node addNodes: (self intersperseWithNodes: elements).
	elements do: [:each | | next previous |
		next := elements after: each ifAbsent: [nil].
		previous := elements before: each ifAbsent: [nil].
		
		self
			assert: each nextElement == next;
			assert: each previousElement == previous;
			assert: (node elementAfter: each) == next;
			assert: (node elementBefore: each) == previous].

	self
		assert: (node elementAfter: XMLElement new) isNil;
		assert: (node elementBefore: XMLElement new) isNil.