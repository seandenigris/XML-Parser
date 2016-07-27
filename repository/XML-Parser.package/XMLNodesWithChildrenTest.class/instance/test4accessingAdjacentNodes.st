tests
test4accessingAdjacentNodes
	| node children |

	node := XMLMockNodeWithElements new.
	children := self newNodes: 5.
	node addNodes: children.
	children do: [:each | | next previous |
		next := children after: each ifAbsent: [nil].
		previous := children before: each ifAbsent: [nil].
		
		self
			assert: each nextNode == next;
			assert: each previousNode == previous;
			assert: (node nodeAfter: each) == next;
			assert: (node nodeBefore: each) == previous].

	self
		assert: (node nodeAfter: XMLNode new) isNil;
		assert: (node nodeBefore: XMLNode new) isNil.