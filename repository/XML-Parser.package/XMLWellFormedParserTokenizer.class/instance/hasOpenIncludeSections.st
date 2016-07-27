testing
hasOpenIncludeSections
	openIncludeSections == nil
		ifTrue: [^ false].
	^ openIncludeSections size > 0.