tests
testRemoveLastFew
	| list  |

	super testRemoveLastFew.
	
	list := self listWithElements.
	self
		should: [list removeLast: 2]
		removeAll: (self listElementsLast: 2) reversed
		fromAndNotifyOf: list.