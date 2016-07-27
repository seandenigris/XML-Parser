tests
testAddAfterIndex
	| list |

	list := self listWithSingleElement.
	self
		assert:
			(self listElements allButFirst reversed
				allSatisfy: [:each | (list add: each afterIndex: 1) = each]);
		assert: list = self listWithElements;
		should: [list add: self singleElement afterIndex: self listElements size + 1] raise: Error;
		should: [list add: self singleElement afterIndex: -1] raise: Error.