tests
testRemoveAll
	| list |

	super testRemoveAll.
	list := self listWithElements.
	self
		should: [list removeAll]
		removeAll: self listElements reversed
		fromAndNotifyOf: list.