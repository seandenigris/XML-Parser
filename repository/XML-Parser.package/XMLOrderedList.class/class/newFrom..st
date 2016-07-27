instance creation
newFrom: aCollection
	^ self basicNew setCollection: (OrderedCollection newFrom: aCollection)