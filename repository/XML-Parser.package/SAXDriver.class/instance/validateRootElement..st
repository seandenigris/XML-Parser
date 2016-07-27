validation
validateRootElement: aStartTag
	(self saxHandler requiresDocumentConstraints
		and: [self validator hasElementValidators not])
		ifTrue: [
			XMLValidationException signal:
				'Document validation constraints required'].

	self validator validateRootElement: aStartTag.