tests
testAddLast
	| list |

	list := self emptyList.
	self
		assert: (self listElements allSatisfy: [:each | (list addLast: each) = each]);
		assert: list = self listWithElements.