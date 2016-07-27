parsing
parse
	| defaultValueValidator attributeValidator |

	defaultValueValidator :=
		(DefaultValueValidators
			at: self parseDefaultPragma
			ifAbsent: [XMLDefaultValueAttributeValidator])
				attribute: attribute
				defaultValue: self parseDefaultValue.

	attributeValidator :=
		self validatorClassForType
			element: element
			attribute: attribute
			defaultValueValidator: defaultValueValidator.
	attributeValidator isValueListValidator
		ifTrue: [attributeValidator allowedValues: (self parseEnumerationType)].

	^ attributeValidator.