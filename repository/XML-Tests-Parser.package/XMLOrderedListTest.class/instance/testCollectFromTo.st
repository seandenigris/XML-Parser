tests
testCollectFromTo
	| list copySize |

	list := self listWithElements.
	copySize := list size // 2.
	self assert:
		(list collect: [:each | each asUppercase] from: 1 to: copySize) =
			(self listClass newFrom: (self listElements collect: [:each | each asUppercase] from: 1 to: copySize))