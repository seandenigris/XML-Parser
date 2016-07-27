private 
validatorForTypeWithDefaultValueValidator: aDefaultValueValidator
	| attributeValidator |

	attributeValidator :=
		self validatorClassForType
			element: element
			attribute: attribute
			defaultValueValidator: aDefaultValueValidator.
	attributeValidator isValueListValidator
		ifTrue: [attributeValidator setAllowedValuesFromString: type].

	^ attributeValidator.