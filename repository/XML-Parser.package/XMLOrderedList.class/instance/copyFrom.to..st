copying
copyFrom: aStart to: anEnd
	^ self copyThenSetCollection:
		(collection copyFrom: (aStart max: 1) to: (self size min: anEnd))