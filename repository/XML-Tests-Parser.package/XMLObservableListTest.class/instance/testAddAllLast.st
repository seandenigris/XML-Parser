tests
testAddAllLast
	| list |

	super testAddAllLast.
	list := self emptyList.
	self
		should: [list addAllLast: self listElements]
		addAll: self listElements
		toAndNotifyOf: list.