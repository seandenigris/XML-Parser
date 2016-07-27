tests
testSorted
	| list |

	list := self listWithElements.
	self
		assertList: list sorted
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copy sorted: [:a :b | a <= b])).
	self
		assertList: (list sorted: [:a :b | a > b])
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements copy sorted: [:a :b | a > b])).