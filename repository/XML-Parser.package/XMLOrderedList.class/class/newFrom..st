instance creation
newFrom: aCollection
	^ self basicNew setCollection: (self collectionClass newFrom: aCollection)