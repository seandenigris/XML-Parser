tests
testRemoveAll
	| list |

	super testRemoveAll.

	list := self listWithElements.
	self
		should: [list removeAll]
		removeAll: self listElements reversed
		fromAndNotify: list.