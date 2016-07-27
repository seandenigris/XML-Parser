tests
testNewWithAll
	| list |

	list := self listClass new: 10 withAll: self singleElement.
	self allowsDuplicates
		ifTrue: [self assert: list size = 10]
		ifFalse: [self assert: list size = 1].
	self assert: (list allSatisfy: [:each | each = self singleElement]).