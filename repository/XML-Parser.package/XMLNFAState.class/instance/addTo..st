adding
addTo: aCollection
	lastAddedTo == aCollection
		ifFalse: [
			lastAddedTo := aCollection.
			aCollection add: self]