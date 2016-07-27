tests
testCollect
	| list |

	list := self listWithElements.
	self
		assertList: (list collect: [:each | each asUppercase])
		copiedFrom: list
		equals: (self listClass newFrom: (self listElements collect: [:each | each asUppercase])).