tests
testValidationAndEntityReferenceToggle
	self deny:
		((SAXHandler on: '')
			isValidating: true;
			preservesUndeclaredEntityReferences: true;
			isValidating).
	self deny:
		((SAXHandler on: '')
			preservesUndeclaredEntityReferences: true;
			isValidating: true;
			preservesUndeclaredEntityReferences).