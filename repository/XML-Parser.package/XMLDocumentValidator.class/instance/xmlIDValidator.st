private
xmlIDValidator
	^ xmlIdValidator ifNil: [xmlIdValidator := XMLReservedIDAttributeValidator new]