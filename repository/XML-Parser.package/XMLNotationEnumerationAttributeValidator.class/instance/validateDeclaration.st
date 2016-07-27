validating
validateDeclaration
	self unparsedEntityValidator
		validateNotationAttribute: self attribute
		forElement: self element.
	super validateDeclaration.