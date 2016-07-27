adding
addValidatorForAttributeIn: anElement named: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| attributeValidatorsForElement |

	attributeValidatorsForElement :=
		self attributeValidators
			at: anElement
			ifAbsentPut: [Dictionary new].
	(attributeValidatorsForElement includesKey: anAttribute)
		ifTrue: [^ self].

	attributeValidatorsForElement
		at: anAttribute
		put: 
			((DTDAttributeDefinitionParser
				element:  anElement
				attribute: anAttribute
				type: aType
				defaultPragma: aDefaultPragma
				defaultValue: aDefaultValue) parse
					initializeWithValidatorsFrom: self).