parsing
parse
	| defaultValueValidator |

	defaultValueValidator :=
		(DefaultValueValidators
			at: defaultPragma
			ifAbsent: [XMLDefaultValueAttributeValidator])
				attribute: attribute
				defaultValue: defaultValue.

	^ self validatorForTypeWithDefaultValueValidator: defaultValueValidator.