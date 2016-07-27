enumerating
elementsDo: aBlock
	self elementsAndContentsDo: [:each | each isText ifFalse: [aBlock value: each]]