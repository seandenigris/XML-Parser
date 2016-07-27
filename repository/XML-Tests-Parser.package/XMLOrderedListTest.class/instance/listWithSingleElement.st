accessing
listWithSingleElement
	^ self listClass new
		add: self singleElement;
		yourself