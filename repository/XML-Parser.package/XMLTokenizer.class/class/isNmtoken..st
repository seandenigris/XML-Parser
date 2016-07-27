testing
isNmtoken: aString
	^ aString notEmpty
		and: [aString allSatisfy: [:each |
			(NameStartChars includes: each)
				or: [AdditionalNameChars includes: each]]].