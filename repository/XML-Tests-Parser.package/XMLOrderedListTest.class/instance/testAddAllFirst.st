tests
testAddAllFirst
	| list |

	list := self emptyList.
	self
		assert: (list addAllFirst: self listElements) = self listElements;
		assert: list = self listWithElements;
		assert: (list addAllFirst: self changedListElements) = self changedListElements;
		assert: list = (self listClass newFrom: self changedListElements, self listElements).