accessing
newListItem
	^ newAttribute
		ifNil: [newAttribute := XMLAttribute name: 'newName' value: 'newValue']