tests
testAddBefore
	| list |

	(list := self emptyList) add: self listElements last.
	self
		assert:
			(self listElements allButLast
				allSatisfy: [:each | (list add: each before: self listElements last) = each]);
		assert: list = self listWithElements;
		should: [list add: self singleElement before: self absentElement] raise: Error.