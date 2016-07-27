instance creation
new: aSize withAll: anObject
	^ self basicNew setCollection: (OrderedCollection new: aSize withAll: anObject)