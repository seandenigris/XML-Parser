validation
validateRootElement: anElementName
	(self dtd rootElement notEmpty
		and: [self dtd rootElement ~= anElementName])
		ifTrue: [self errorInvalidRoot: anElementName]