tests
testSort
	| list |

	list := self listWithElements.
	self
		assert: list sort == list;
		assert: list = (self listClass newFrom: (self listElements copy sort: [:a :b | a <= b]));
		assert: (list sort: [:a :b | a > b]) == list;
		assert: list = (self listClass newFrom: (self listElements copy sort: [:a :b | a > b])).