validation
validateAttributes: anAttributeDictionary with: aValidatorDictionary
	| unvalidatedAttributes |

	unvalidatedAttributes := anAttributeDictionary keys asSet.
	aValidatorDictionary
		ifNotNil: [
			aValidatorDictionary keysAndValuesDo: [:attribute :validator |
				validator validateAttributes: anAttributeDictionary.
				unvalidatedAttributes
					remove: attribute
					ifAbsent: []]].

	unvalidatedAttributes
		ifNotEmpty: [self unvalidatedAttributes: unvalidatedAttributes].