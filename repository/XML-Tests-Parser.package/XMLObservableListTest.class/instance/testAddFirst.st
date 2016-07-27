tests
testAddFirst
	| list |

	super testAddFirst.

	list := self listWithSingleElement.
	self
		should: [list addFirst: self absentElement]
		add: self absentElement
		toAndNotifyOf: list.