enumerating
stringNodesDo: aBlock
	self nodes do: [:each | each isStringNode ifTrue: [aBlock value: each]]