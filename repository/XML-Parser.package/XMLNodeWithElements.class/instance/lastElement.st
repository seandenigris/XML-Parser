accessing
lastElement
	^ self elements ifNotEmpty: [:elements | elements last] ifEmpty: [nil]