validating
validateRootElement: anElement
	(self doctypeDefinition hasRoot
		and: [self doctypeDefinition root ~= anElement])
		ifTrue: [self errorInvalidRoot: anElement]