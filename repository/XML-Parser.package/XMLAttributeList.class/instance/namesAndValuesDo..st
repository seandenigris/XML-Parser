enumerating
namesAndValuesDo: aBlock
	self do: [:each | aBlock value: each name value: each value]