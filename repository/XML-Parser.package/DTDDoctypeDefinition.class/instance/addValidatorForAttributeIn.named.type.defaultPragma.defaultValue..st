adding
addValidatorForAttributeIn: anElement named: aName type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| parser attributeValidatorsForElement |

	attributeValidatorsForElement :=
		self attributeValidators
			at: anElement
			ifAbsentPut: [Dictionary new].
	(attributeValidatorsForElement includesKey: aName)
		ifTrue: [^ nil].

	parser :=
		DTDAttributeDefinitionParser
			element:  anElement
			attribute: aName
			type: aType
			defaultPragma: aDefaultPragma
			defaultValue: aDefaultValue.

	self
		addAttributeValidator: parser parse
		to: attributeValidatorsForElement.