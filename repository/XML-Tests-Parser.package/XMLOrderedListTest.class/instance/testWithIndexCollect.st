tests
testWithIndexCollect
	| list |

	list := self listWithElements.
	self
		assertList: (list withIndexCollect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listElements with: (1 to: list size) collect: [:each :i | each -> i])).