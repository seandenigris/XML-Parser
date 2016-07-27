testing
isNmtoken: aString
	aString ifEmpty: [^ false].

	^ aString allSatisfy: [:each |
		(NameStartChars includes: each)
			or: [AdditionalNameChars includes: each]].