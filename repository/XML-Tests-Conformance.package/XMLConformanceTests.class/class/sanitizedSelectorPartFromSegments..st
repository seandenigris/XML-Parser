selectors
sanitizedSelectorPartFromSegments: aSegmentArray
	^ aSegmentArray concatenation asString select: [:each | each isAlphaNumeric]