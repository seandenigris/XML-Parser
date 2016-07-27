tests
testRemoveAt
	| list |

	list := self listWithElements.
	self
		assert: (list removeAt: (list indexOf: self singleElement)) = self singleElement;
		assert: (list = (self listWithElements copyWithout: self singleElement));
		should: [list removeAt: 0] raise: Error;
		should: [list removeAt: list size + 1] raise: Error.