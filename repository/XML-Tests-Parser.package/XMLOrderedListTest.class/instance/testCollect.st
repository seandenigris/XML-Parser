tests
testCollect
	| list |

	list := self listWithElements.
	self
		assertList: (list collect: [:each | each asUppercase])
		collectedFrom: list
		equals: (self listSpecies newFrom: (self listElements collect: [:each | each asUppercase])).