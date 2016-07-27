accessing
at: aString
	^ self at: aString ifAbsent: ['']
