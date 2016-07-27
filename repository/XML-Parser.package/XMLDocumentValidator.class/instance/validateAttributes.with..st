validation
validateAttributes: anAttributeDictionary with: aValidatorDictionary
	| undeclaredAttributes |

	undeclaredAttributes := anAttributeDictionary keys asSet.
	aValidatorDictionary keysAndValuesDo: [:attribute :validator |
		validator validateAttributes: anAttributeDictionary.
		undeclaredAttributes
			remove: attribute
			ifAbsent: []].

	undeclaredAttributes
		ifNotEmpty: [
			XMLValidationException signal:
				'Undeclared attribute(s) ', (', ' join: undeclaredAttributes)].