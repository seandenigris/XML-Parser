instance creation
new: aSize
	^ self basicNew setCollection: (OrderedCollection new: aSize)