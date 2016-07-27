instance creation
undeclaredGeneralEntity: aName
	^ self new
		messageText: 'Undeclared general entity reference &', aName, ';';
		yourself