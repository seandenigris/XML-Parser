tests
testCollect
	| list |

	list := self listWithItems.
	self
		assertList: (list collect: [:each | self changeListItem: each])
		collectedFrom: list
		equals: (self listSpecies newFrom: self changedListItems).