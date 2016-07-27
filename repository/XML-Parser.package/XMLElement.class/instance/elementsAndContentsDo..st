enumerating
elementsAndContentsDo: aBlock
	self nodesDo: [:each | each isTagOrText ifTrue: [aBlock value: each]]