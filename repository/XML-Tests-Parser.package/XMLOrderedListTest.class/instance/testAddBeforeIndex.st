tests
testAddBeforeIndex
	| list |

	(list := self emptyList) add: self listElements last.
	self listElements allButLast withIndexDo: [:each :i |
		self assert: (list add: each beforeIndex: i) = each].
	self
		assert: list = self listWithElements;
		should: [list add: self newElement beforeIndex: self listElements size + 2] raise: Error;
		should: [list add: self newElement beforeIndex: 0] raise: Error.