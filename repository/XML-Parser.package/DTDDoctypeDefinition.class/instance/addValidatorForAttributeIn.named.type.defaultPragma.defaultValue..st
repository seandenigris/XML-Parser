adding
addValidatorForAttributeIn: anElement named: aName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| attributeValidatorsForElement validator |

	attributeValidatorsForElement :=
		self attributeValidators
			at: anElement
			ifAbsentPut: [Dictionary new].
	(attributeValidatorsForElement includesKey: aName)
		ifTrue: [^ self].

	validator :=
		(DTDAttributeDefinitionParser
			element:  anElement
			attribute: aName
			type: aType
			defaultPragma: aDefaultPragma
			defaultValue: aDefaultValue) parse.

	validator
		validateAndAddTo: attributeValidatorsForElement
		usingDeclarationsFrom: self.