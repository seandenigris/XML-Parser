instance creation
new: aSize
	^ self basicNew setCollection: (self collectionClass new: aSize)