validators
addValidatorForAttributeIn: anElement named: aName type: aType default: aDefaultDeclaration
	| parser validator  |

	parser :=
		DTDAttributeDefinitionParser
			element:  anElement
			attribute: aName
			type: aType
			default: aDefaultDeclaration.
	validator := parser parse.

	(validator isValueListValidator and: [parser isNotationList: aType])
		ifTrue: [
			(validator allowedValues allSatisfy: [:each | self includesNotation: each])
				ifFalse: [XMLValidationException signal: 'Undeclared notation in enumeration']].
	validator isEntityValidator
		ifTrue: [validator unparsedEntities: self unparsedEntities].

	self addAttributeValidator: validator.