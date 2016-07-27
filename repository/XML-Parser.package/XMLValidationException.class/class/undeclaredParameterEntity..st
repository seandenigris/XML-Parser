instance creation
undeclaredParameterEntity: aName
	^ self new
		messageText: 'Undeclared parameter entity reference %', aName, ';';
		yourself