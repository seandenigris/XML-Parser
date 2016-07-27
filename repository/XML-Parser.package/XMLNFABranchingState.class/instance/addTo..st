adding
addTo: aCollection
	lastAddedTo == aCollection
		ifFalse: [
			lastAddedTo := aCollection.
			leftBranch addTo: aCollection.
			rightBranch addTo: aCollection.]