selectors
sanitizedSelectorPartFromSegments: aSegmentArray
	^ ('' join: aSegmentArray) select: [:each | each isAlphaNumeric]