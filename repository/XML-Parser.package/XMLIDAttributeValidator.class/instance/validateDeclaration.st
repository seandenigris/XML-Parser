validating
validateDeclaration
	self elementIDValidator
		validateIDAttribute: self attribute
		forElement: self element.
	super validateDeclaration.