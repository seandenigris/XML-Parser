paths
relativePathStringFromSegments: aSegmentArray
	^ String streamContents: [:stream |
		aSegmentArray withIndexDo: [:each :i |
			i > 1
				ifTrue: [stream nextPut: $/].
			stream nextPutAll: each]]