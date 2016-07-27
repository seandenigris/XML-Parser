enumerating
contentsDo: aBlock
	self nodesDo: [:each | each isText ifTrue: [aBlock value: each]]