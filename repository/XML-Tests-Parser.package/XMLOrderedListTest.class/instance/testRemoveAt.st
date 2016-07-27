tests
testRemoveAt
	self listElements withIndexDo: [:each :i | | list |
		list := self listWithElements.
		self
			assert: (list removeAt: i) = each;
			assert: (list = (self listClass newFrom: (self listElements copyWithout: each)))].
	self
		should: [self listWithElements removeAt: 0] raise: Error;
		should: [self listWithElements removeAt: self listElements size + 1] raise: Error.