tests
testAddAfterIndex
	| list |

	super testAddAfterIndex.

	list := self listWithSingleElement.
	self
		should: [list add: self absentElement afterIndex: (list indexOf: self singleElement)]
		add: self absentElement 
		toAndNotifyOf: list.