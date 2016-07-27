tests
testCollectThenSelect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				collect: [:each | self changeElement: each]
				thenSelect: [:each | each ~= self changedSingleElement])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self changedListElements copyWithout: self changedSingleElement)).