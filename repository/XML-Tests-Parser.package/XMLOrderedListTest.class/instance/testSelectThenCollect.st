tests
testSelectThenCollect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				select: [:each | each ~= self singleElement]
				thenCollect: [:each | self changeElement: each])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self changedListElements copyWithout: self changedSingleElement)).