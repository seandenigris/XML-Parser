tests
testNewWithAll
	| list |

	list := self listClass new: 10 withAll: self singleElement.
	self
		assert: list size = 10;
		assert: (list allSatisfy: [:each | each = self singleElement]).