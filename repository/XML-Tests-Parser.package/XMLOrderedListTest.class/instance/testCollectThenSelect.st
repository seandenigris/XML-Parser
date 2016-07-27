tests
testCollectThenSelect
	| list |

	list := self listWithItems.
	self
		assertList:
			(list
				collect: [:each | self changeListItem: each]
				thenSelect: [:each | each ~= self changedSingleListItem])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self changedListItems copyWithout: self changedSingleListItem)).