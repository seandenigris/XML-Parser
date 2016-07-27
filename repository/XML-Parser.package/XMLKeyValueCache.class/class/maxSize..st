instance creation
maxSize: anInteger
	^ self
		collection: (Dictionary new: anInteger)
		maxSize: anInteger