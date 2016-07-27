tests
testRemoveFirstFew
	| list  |

	super testRemoveFirstFew.
	
	list := self listWithElements.
	self
		should: [list removeFirst: 2]
		removeAll: (self listElements first: 2)
		fromAndNotifyOf: list.