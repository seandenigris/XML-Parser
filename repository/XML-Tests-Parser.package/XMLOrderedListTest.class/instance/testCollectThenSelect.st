tests
testCollectThenSelect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				collect: [:each | each asUppercase]
				thenSelect: [:each | each ~= self singleElement asUppercase])
		copiedFrom: list
		equals:
			(self listClass newFrom:
				(self listElements
					collect: [:each | each asUppercase]
					thenSelect: [:each | each ~= self singleElement asUppercase])).