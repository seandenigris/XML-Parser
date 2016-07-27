tests
testRejectThenCollect
	| list |

	list := self listWithItems.
	self
		assertList:
			(list
				reject: [:each | each = self singleListItem]
				thenCollect: [:each | self changeListItem: each])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self changedListItems copyWithout: self changedSingleListItem)).