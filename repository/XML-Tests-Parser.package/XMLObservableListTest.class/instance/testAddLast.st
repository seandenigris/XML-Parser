tests
testAddLast
	| list |

	super testAddLast.

	list := self listWithSingleElement.
	self
		should: [list addLast: self absentElement]
		add: self absentElement
		toAndNotifyOf: list.