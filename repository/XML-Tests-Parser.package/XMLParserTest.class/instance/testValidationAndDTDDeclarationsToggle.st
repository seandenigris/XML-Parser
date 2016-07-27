tests
testValidationAndDTDDeclarationsToggle
	self assert:
		((SAXHandler on: '<root/>')
			isValidating: false;
			requiresDTDDeclarations: true;
			isValidating).
	self deny:
		((SAXHandler on: '<root/>')
			requiresDTDDeclarations: true;
			isValidating: false;
			requiresDTDDeclarations).