copying
copyFrom: aStart to: anEnd
	^ self newWithCollection:
		(collection copyFrom: (aStart max: 1) to: (self size min: anEnd))