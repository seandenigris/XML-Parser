validators
parseAttributeDefinition: anElement name: aName type: aType default: aDefaultDeclaration
	| parser validator |

	parser :=
		DTDAttributeDefinitionParser
			element:  anElement
			name: aName
			type: aType
			default: aDefaultDeclaration.
	validator := parser parse.

	(validator isEnumerationValidator and: [parser isNotationEnumeration: aType])
		ifTrue: [
			(validator values allSatisfy: [:each | self includesNotation: each])
				ifFalse: [XMLValidationException signal: 'Undeclared notation in enumeration']].
	validator isEntityValidator
		ifTrue: [validator unparsedEntities: self unparsedEntities].

	(self attributeValidators
		at: anElement
		ifAbsentPut: [Dictionary new]) 
			at: aName
			ifAbsentPut: [validator].