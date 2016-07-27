tests
testCollect
	| list |

	list := self listWithElements.
	self
		assertList: (list collect: [:each | self changeElement: each])
		collectedFrom: list
		equals: (self listSpecies newFrom: self changedListElements).