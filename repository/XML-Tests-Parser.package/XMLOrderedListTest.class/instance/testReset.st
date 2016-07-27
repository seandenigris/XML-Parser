tests
testReset
	| list oldCapacity |

	list := self listWithElements.
	self hasCapacity
		ifTrue: [oldCapacity := list capacity].
	list reset.
	self assert: list isEmpty.
	oldCapacity
		ifNotNil: [self assert: list capacity >= oldCapacity].