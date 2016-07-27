tests
testWithCollect
	| list |

	list := self listWithElements.
	self
		assertList: (list with: (1 to: list size + 1) collect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listElements with: (1 to: list size) collect: [:each :i | each -> i])).
	self
		assertList: (list with: (1 to: list size - 1) collect: [:each :i | each -> i])
		collectedFrom: list
		equals:
			(self listSpecies newFrom:
				(self listElements allButLast
					with: (1 to: list size - 1) collect: [:each :i | each -> i])).