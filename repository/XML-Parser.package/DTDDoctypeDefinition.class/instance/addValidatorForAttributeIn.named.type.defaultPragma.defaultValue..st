adding
addValidatorForAttributeIn: anElement named: anAttribute type: aType defaultPragma: aDefaultPragma defaultValue: aDefaultValue
	| attributeValidatorsForElement |

	attributeValidatorsForElement :=
		self attributeValidators
			at: anElement
			ifAbsentPut: [Dictionary new].

	"additional declarations for the same attribute are legal, unlike with
	element declarations, but are ignored"
	(attributeValidatorsForElement includesKey: anAttribute)
		ifFalse: [
			attributeValidatorsForElement
				at: anAttribute
				put: 
					((DTDAttributeDefinitionParser
						element:  anElement
						attribute: anAttribute
						type: aType
						defaultPragma: aDefaultPragma
						defaultValue: aDefaultValue) parse
							initializeWithValidatorsFrom: self;
							validateDeclaration)].