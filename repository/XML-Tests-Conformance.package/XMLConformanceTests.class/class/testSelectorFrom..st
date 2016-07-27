selectors
testSelectorFrom: aFileReference
	^ 'test',
		(self sanitizedSelectorPartFromSegments:
			(self segmentsAfterSuite: aFileReference)) asSymbol