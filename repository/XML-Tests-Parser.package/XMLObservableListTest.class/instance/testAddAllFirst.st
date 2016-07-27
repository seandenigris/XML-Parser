tests
testAddAllFirst
	| list |

	super testAddAllFirst.
	list := self emptyList.
	self
		should: [list addAllFirst: self listElements]
		addAll: self listElements reversed
		toAndNotifyOf: list.