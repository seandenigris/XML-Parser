tests
testSelectThenCollect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				select: [:each | each ~= self singleElement]
				thenCollect: [:each | each asUppercase])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				((self listElements copyWithout: self singleElement)
					collect: [:each | each asUppercase])).