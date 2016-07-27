validators
addAttributeValidator: aValidator
	| attributeValidatorsForElement |

	attributeValidatorsForElement :=
		self attributeValidators
			at: aValidator element
			ifAbsentPut: [Dictionary new].

	"Subsequent declarations are ignored."
	(attributeValidatorsForElement includesKey: aValidator attribute)
		ifTrue: [^ self].

	aValidator isIDValidator
		ifTrue: [
			attributeValidatorsForElement valuesDo: [:each |
				each isIDValidator
					ifTrue: [
						XMLValidationException signal:
							'Element <', aValidator element, '> has multiple ID elements']]].

	attributeValidatorsForElement
		at: aValidator attribute
		put: aValidator.