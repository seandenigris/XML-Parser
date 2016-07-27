validation
validateAndAddTo: anAttributeValidatorDictionary
	self hasNotationValues
		ifTrue: [
			anAttributeValidatorDictionary valuesDo: [:each |
				(each isValueListValidator and: [each hasNotationValues])
					ifTrue: [
						XMLValidationException signal:
							'Element <', element, '> has multiple NOTATION list attributes']]].

	super validateAndAddTo: anAttributeValidatorDictionary.