accessing
nodesByName
	^ nodesByName ifNil: [nodesByName := Dictionary new: 10]