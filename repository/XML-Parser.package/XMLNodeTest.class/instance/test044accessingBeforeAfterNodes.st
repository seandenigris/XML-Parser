tests
test044accessingBeforeAfterNodes
	| node children |

	node := XMLNodeWithElements new.
	children := self newNodes: 3.
	node addNodes: children.
	children do: [:each | | next previous |
		next := children after: each ifAbsent: [nil].
		previous := children before: each ifAbsent: [nil].
		
		self
			assert: each nextNode = next;
			assert: each previousNode = previous;
			assert: (node nodeAfter: each) = next;
			assert: (node nodeBefore: each) = previous].