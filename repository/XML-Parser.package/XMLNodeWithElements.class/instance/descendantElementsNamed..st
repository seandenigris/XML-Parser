accessing
descendantElementsNamed: aName
	^ self descendantElementsSelect: [:each | each isNamed: aName]