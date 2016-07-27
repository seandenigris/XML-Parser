tests
testAddAll
	| list |

	super testAddAll.

	list := self emptyList.
	self
		should: [list addAll: self listElements]
		addAll: self listElements
		toAndNotify: list.
	self
		should: [list addAll: self changedListElements]
		addAll: self changedListElements
		toAndNotify: list.