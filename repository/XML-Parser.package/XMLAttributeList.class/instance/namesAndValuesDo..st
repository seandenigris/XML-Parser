enumerating
namesAndValuesDo: aBlock
	self nodes do: [:each | aBlock value: each name value: each value]