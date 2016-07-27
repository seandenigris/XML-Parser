instance creation
new: aSize withAll: anObject
	^ self basicNew setCollection: (self collectionClass new: aSize withAll: anObject)