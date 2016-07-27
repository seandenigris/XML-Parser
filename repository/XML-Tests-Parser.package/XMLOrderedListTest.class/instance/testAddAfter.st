tests
testAddAfter
	| list |

	list := self listWithSingleElement.
	self
		assert:
			(self listElements allButFirst reversed
				allSatisfy: [:each | (list add: each after: self singleElement) = each]);
		assert: list = self listWithElements;
		should: [list add: self singleElement after: self absentElement] raise: Error.