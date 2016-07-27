instance creation
undeclaredGeneralEntity: aName isParsed: aBoolean
	^ self new
		messageText:
			'Undeclared ',
			(aBoolean ifTrue: ['general'] ifFalse: ['unparsed']),
			' entity reference &', aName, ';';
		yourself