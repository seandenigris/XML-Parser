tests
testAddAfter
	| list |

	super testAddAfter.

	list := self listWithSingleElement.
	self
		should: [list add: self absentElement after: self singleElement]
		add: self absentElement
		toAndNotifyOf: list.