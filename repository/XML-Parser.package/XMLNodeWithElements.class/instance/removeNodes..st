accessing
removeNodes: aNodeCollection
	aNodeCollection do: [:each | self removeNode: each].
	^ aNodeCollection.