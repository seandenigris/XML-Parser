instance creation
undeclaredUnparsedEntity: aName
	^ self new
		messageText: 'Undeclared unparsed entity reference &', aName, ';';
		yourself