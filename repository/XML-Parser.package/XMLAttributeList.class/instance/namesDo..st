enumerating
namesDo: aBlock
	self nodes do: [:each | aBlock value: each name]