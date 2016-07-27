validation
validateRootElement: aStartTag
	(self saxHandler requiresDTDDeclarations
		and: [self validator hasElementValidators not])
		ifTrue: [
			XMLValidationException signal:
				'DTD with element and attribute declarations required'].

	(self dtd rootElement isEmpty
		or: [aStartTag = self dtd rootElement])
		ifTrue: [^ self].

	XMLValidationException signal: 'Element <', aStartTag, '> cannot be root'.