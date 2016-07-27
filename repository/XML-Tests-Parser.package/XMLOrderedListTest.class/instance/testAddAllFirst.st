tests
testAddAllFirst
	| list |

	(list := self emptyList) add: self listElements last.
	self
		assert: (list addAllFirst: self listElements allButLast) = self listElements allButLast;
		assert: list = self listWithElements.