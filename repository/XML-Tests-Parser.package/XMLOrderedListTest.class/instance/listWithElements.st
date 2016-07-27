accessing
listWithElements
	^ self listClass new
		addAll: self listElements;
		yourself