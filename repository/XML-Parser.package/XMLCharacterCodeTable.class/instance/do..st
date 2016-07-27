enumerating
do: aBlock
	self codeIndexesDo: [:each | aBlock value: (self at: each)]