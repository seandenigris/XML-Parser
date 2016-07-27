tests
testAdd
	| list |

	super testAdd.

	list := self emptyList.
	self
		should: [list add: self singleElement]
		add: self singleElement
		toAndNotifyOf: list.