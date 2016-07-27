validating
validateAttributeDeclaration
	super validateAttributeDeclaration.
	self unparsedEntityValidator
		validateNotationAttribute: self attribute
		forElement: self element.
	"The 'all notation names in the declaration MUST be declared' constraint
	is not checked here because doing so causes tests in the W3C XML Conformance
	suite to fail"