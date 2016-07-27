parsing
parse
	^ (NonEnumerationAttributeValidatorClasses
		at: type
		ifAbsent: [^ self parseEnumerationAttributeDefinition])
		element: element
		attribute: attribute
		defaultValidator: defaultValidator