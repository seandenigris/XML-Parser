tests
testValidationAndConstraintsToggle
	self assert:
		((SAXHandler on: '<root/>')
			isValidating: false;
			requiresDocumentConstraints: true;
			isValidating).
	self deny:
		((SAXHandler on: '<root/>')
			requiresDocumentConstraints: true;
			isValidating: false;
			requiresDocumentConstraints).