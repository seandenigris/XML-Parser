validation
validateRootElement: anElementName
	(dtd rootElement notEmpty
		and: [dtd rootElement ~= anElementName])
		ifTrue: [
			XMLValidationException signal:
				'Element <', anElementName, '> cannot be root']