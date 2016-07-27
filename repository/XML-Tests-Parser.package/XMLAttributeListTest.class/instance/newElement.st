accessing
newElement
	^ newAttribute
		ifNil: [newAttribute := XMLAttribute name: 'newName' value: 'newValue']