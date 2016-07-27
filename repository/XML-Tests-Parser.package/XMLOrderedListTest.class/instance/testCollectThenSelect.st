tests
testCollectThenSelect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				collect: [:each | each asUppercase]
				thenSelect: [:each | each ~= self singleElement asUppercase])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listElements
					collect: [:each | each asUppercase]
					thenSelect: [:each | each ~= self singleElement asUppercase])).