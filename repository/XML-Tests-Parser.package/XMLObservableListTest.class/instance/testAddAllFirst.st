tests
testAddAllFirst
	| list |

	super testAddAllFirst.

	list := self emptyList.
	self
		should: [list addAllFirst: self listElements]
		addAll: self listElements reversed
		toAndNotify: list.
	self
		should: [list addAllFirst: self changedListElements]
		addAll: self changedListElements reversed
		toAndNotify: list.