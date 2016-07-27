parsing
parse
	| defaultValueValidator attributeValidator |

	defaultValueValidator :=
		(DefaultValueValidators
			at: self parseDefaultPragma
			ifAbsent: [XMLDefaultValueAttributeValidator])
				name: name
				defaultValue: self parseDefaultValue.

	attributeValidator :=
		self validatorClassForType
			element: element
			name: name
			defaultValueValidator: defaultValueValidator.

	attributeValidator isEnumerationValidator
		ifTrue: [attributeValidator values: (self parseEnumerationType)].

	^ attributeValidator.