parsing
parse
	| defaultValueValidator attributeValidator |

	defaultValueValidator :=
		(DefaultValueValidators
			at: defaultPragma
			ifAbsent: [XMLDefaultValueAttributeValidator])
				attribute: attribute
				defaultValue: defaultValue.

	attributeValidator :=
		self validatorClassForType
			element: element
			attribute: attribute
			defaultValueValidator: defaultValueValidator.
	attributeValidator isValueListValidator
		ifTrue: [self parseValueListTypeFor: attributeValidator].

	^ attributeValidator.