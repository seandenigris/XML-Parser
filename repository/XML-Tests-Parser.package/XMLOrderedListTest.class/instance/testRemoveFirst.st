tests
testRemoveFirst
	| list |

	list := self listWithElements.
	self listElements do: [:each | 
	self
		assert: list removeFirst = each;
		assert: list = (self listClass newFrom: (self listElements copyAfter: each))].
	self should: [list removeFirst] raise: Error.