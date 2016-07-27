testing
isNmtoken: aString
	^ aString notEmpty
		and: [aString allSatisfy: [:each | self isNmtokenChar: each]]