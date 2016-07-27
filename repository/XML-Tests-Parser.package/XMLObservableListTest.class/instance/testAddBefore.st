tests
testAddBefore
	| list |

	super testAddBefore.

	list := self listWithSingleElement.
	self
		should: [list add: self absentElement before: self singleElement]
		add: self absentElement 
		toAndNotifyOf: list.