tests
testAddBefore
	| list last |

	last := self listElements last.
	(list := self emptyList) add: last.
	self
		assert:
			(self listElements allButLast
				allSatisfy: [:each | (list add: each before: last) = each]);
		assert: list = self listWithElements;
		should: [list add: self newElement before: self absentElement] raise: Error.