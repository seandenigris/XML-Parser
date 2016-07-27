adding
addAll: aCollection
	aCollection associationsDo: [:each | self add: each].
	^ aCollection.