accessing
listElementsLast: anInteger
	"last: is not portable"
	^ self listElements allButFirst: self listElements size - anInteger