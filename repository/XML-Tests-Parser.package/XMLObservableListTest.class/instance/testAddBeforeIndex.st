tests
testAddBeforeIndex
	| list |

	super testAddBeforeIndex.

	list := self listWithSingleElement.
	self
		should: [list add: self absentElement beforeIndex: (list indexOf: self singleElement)]
		add: self absentElement 
		toAndNotifyOf: list.