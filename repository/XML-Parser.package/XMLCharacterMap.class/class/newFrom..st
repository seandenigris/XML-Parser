instance creation
newFrom: aCollection
	^ self new
		addAll: aCollection;
		yourself