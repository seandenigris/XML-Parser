testing
isFailingTestFilePathSegments: aPathSegmentCollection
	(self failingNames includes: aPathSegmentCollection last)
		ifTrue: [^ true].

	aPathSegmentCollection do: [:segment |
		(self failingNamePatterns anySatisfy: [:pattern |
			segment includesSubstring: pattern])
			ifTrue: [^ true]].

	^ false.