enumerating
contentNodesDo: aBlock
	self nodes do: [:each | each isContentNode ifTrue: [aBlock value: each]]