copying
copyFrom: aStart to: anEnd
	^ self copyEmptyWithCollection:
		(collection copyFrom: (aStart max: 1) to: (self size min: anEnd))