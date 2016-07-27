validation
validateRootElement: aStartTag
	(self dtd rootElement isEmpty
		or: [aStartTag = self dtd rootElement])
		ifTrue: [^ self].

	XMLValidationException signal: 'Element <', aStartTag, '> cannot be root'.