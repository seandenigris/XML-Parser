tests
testWithIndexCollect
	| list |

	list := self listWithElements.
	self
		assertList: (list withIndexCollect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listElements withIndexCollect: [:each :i | each -> i])).