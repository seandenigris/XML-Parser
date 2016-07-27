tests
testSort
	| list |

	list := self listWithElements.
	self
		assert: list sort == list;
		assert: list = (self listClass newFrom: (self listElements copy sort: self sortBlock));
		assert: (list sort: self reverseSortBlock) == list;
		assert: list = (self listClass newFrom: (self listElements copy sort: self reverseSortBlock)).