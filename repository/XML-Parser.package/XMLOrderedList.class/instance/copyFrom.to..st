copying
copyFrom: aStart to: anEnd
	^ self speciesNewWithCollection:
		(collection copyFrom: (aStart max: 1) to: (self size min: anEnd))