tests
testCopyFromTo
	| list |

	list := self emptyList.
	self
		assertList: (list copyFrom: 1 to: 10)
		isPartialCopyOf: list
		equalTo: self emptyList.

	list := self listWithElements.
	self
		assertList: (list copyFrom: 1 to: list size)
		isPartialCopyOf: list
		equalTo: self listWithElements.
	self
		assertList: (list copyFrom: 1 to: (list size / 2) asInteger)
		isPartialCopyOf: list
		equalTo: (self listClass newFrom: (self listElements copyFrom: 1 to: (list size / 2) asInteger)).
	self
		assertList: (list copyFrom: 1 to: (list size * 2) asInteger)
		isPartialCopyOf: list
		equalTo: self listWithElements.