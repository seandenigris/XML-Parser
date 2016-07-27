testing
isName: aString
	aString ifEmpty: [^ false].

	aString doWithIndex: [:each :i | 
		((NameStartChars includes: each)
			or: [i > 1 and: [AdditionalNameChars includes: each]])
			ifFalse: [^ false]].

	^ true.