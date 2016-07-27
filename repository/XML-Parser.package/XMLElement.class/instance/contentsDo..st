enumerating
contentsDo: aBlock
	self elementsAndContentsDo: [:each | each isText ifTrue: [aBlock value: each]]