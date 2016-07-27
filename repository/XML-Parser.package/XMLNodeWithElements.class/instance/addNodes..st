accessing
addNodes: aNodeCollection
	aNodeCollection do: [:each | self addNode: each].
	^ aNodeCollection.