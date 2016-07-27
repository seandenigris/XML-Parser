tests
testRejectThenCollect
	| list |

	list := self listWithElements.
	self
		assertList:
			(list
				reject: [:each | each = self singleElement]
				thenCollect: [:each | self changeElement: each])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self changedListElements copyWithout: self changedSingleElement)).