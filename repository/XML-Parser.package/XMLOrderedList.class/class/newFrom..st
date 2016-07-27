instance creation
newFrom: aCollection
	"use withAll: for portability"
	^ self basicNew setCollection: (self collectionClass withAll: aCollection)