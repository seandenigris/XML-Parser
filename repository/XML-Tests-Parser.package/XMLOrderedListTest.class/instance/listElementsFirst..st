accessing
listElementsFirst: anInteger
	"first: is not portable"
	^ self listElements
		copyFrom: 1
		to: ((anInteger max: 0) min: self listElements size)