tests
testAddAllFirst
	| list |

	list := self emptyList.
	self
		assert: (list addAllFirst: self listElements) = self listElements;
		assert: list = self listWithElements;
		assert: (list addAllFirst: self listElements reversed) = self listElements reversed;
		assert: list = (self listClass newFrom: self listElements reversed, self listElements).