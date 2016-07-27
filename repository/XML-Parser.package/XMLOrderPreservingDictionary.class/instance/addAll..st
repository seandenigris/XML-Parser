adding
addAll: aKeyedCollection
	aKeyedCollection associationsDo: [:each | self add: each].
	^ aKeyedCollection.