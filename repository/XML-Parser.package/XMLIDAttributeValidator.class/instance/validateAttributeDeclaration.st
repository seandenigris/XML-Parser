validating
validateAttributeDeclaration
	super validateAttributeDeclaration.

	self elementIDValidator
		validateIDAttribute: self attribute
		forElement: self element.