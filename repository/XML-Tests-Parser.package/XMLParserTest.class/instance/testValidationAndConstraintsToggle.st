tests
testValidationAndConstraintsToggle
	self assert:
		((SAXHandler on: '')
			isValidating: false;
			requiresDocumentConstraints: true;
			isValidating).
	self deny:
		((SAXHandler on: '')
			requiresDocumentConstraints: true;
			isValidating: false;
			requiresDocumentConstraints).