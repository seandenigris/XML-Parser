enumerating
allElementsNamed: aName
	^ self allElementsSelect: [:each | each isNamed: aName]