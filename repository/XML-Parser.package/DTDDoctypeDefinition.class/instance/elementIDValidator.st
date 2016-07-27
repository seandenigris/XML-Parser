private
elementIDValidator
	^ elementIdValidator ifNil: [elementIdValidator := XMLElementIDValidator new]