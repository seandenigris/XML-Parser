selectors
sourceSelelctorFromSegments: aSegmentArray
	^ ('source', (self sanitizedSelectorPartFromSegments: aSegmentArray)) asSymbol