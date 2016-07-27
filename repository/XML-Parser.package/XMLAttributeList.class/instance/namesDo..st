enumerating
namesDo: aBlock
	self do: [:each | aBlock value: each name]