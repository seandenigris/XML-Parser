accessing
currentScopedAttributes
	^ self scopedAttributes
		ifEmpty: [nil]
		ifNotEmpty: [:attributes | attributes last]