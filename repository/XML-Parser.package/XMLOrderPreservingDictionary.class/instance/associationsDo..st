enumerating
associationsDo: aBlock
	^ self associations do: [:each | aBlock value: each]