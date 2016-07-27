tests
testAddFirst
	| list |

	list := self emptyList.
	self
		assert: (self listElements reversed allSatisfy: [:each | (list addFirst: each) = each]);
		assert: list = self listWithElements.