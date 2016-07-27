accessing
firstElement
	^ self elements ifNotEmpty: [:elements | elements first] ifEmpty: [nil]