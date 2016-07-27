tests
testAddAllLast
	| list |

	super testAddAllLast.

	list := self emptyList.
	self
		should: [list addAllLast: self listElements]
		addAll: self listElements
		toAndNotify: list.
	self
		should: [list addAllLast: self changedListElements]
		addAll: self changedListElements
		toAndNotify: list.