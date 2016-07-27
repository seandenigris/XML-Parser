tests
testAddAll
	| list |

	super testAddAll.
	list := self emptyList.
	self
		should: [list addAll: self listElements]
		addAll: self listElements
		toAndNotifyOf: list.