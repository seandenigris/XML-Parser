tests
testReplaceFromToWithStartingAt
	| list |

	list := self emptyList.
	self
		assert: (list replaceFrom: 1 to: self listElements size with: self listElements startingAt: 1) = list;
		assert: list = self listWithElements;
		assert: (list replaceFrom: 1 to: self listElements size with: self listElements reversed startingAt: 1) = list;
		assert: list = self listWithElements reversed;
		should: [list replaceFrom: 1 to: self listElements size + 1 with: self listElements startingAt: 1] raise: Error.