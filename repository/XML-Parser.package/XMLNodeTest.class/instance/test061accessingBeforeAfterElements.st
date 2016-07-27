tests
test061accessingBeforeAfterElements
	| node elements |

	node := XMLNodeWithElements new.
	elements := self newElements: 3.
	node addNodes: (self interspersedWithNodes: elements).
	elements do: [:each | | next previous |
		next := elements after: each ifAbsent: [nil].
		previous := elements before: each ifAbsent: [nil].
		
		self
			assert: each nextElement = next;
			assert: each previousElement = previous;
			assert: (node elementAfter: each) = next;
			assert: (node elementBefore: each) = previous].