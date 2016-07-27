validating
validateRootElement: anElementName
	(self doctypeDefinition root notEmpty
		and: [self doctypeDefinition root ~= anElementName])
		ifTrue: [self errorInvalidRoot: anElementName]