accessing
listElementsLast: anInteger
	"last: is not portable"
	anInteger > 0
		ifFalse: [^ #()].
	^ self listElements
		copyFrom: (((self listElements size - anInteger) + 1) max: 1)
		to: self listElements size.