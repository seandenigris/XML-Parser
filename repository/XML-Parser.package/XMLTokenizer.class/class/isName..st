testing
isName: aString
	aString ifEmpty: [^ false].

	aString doWithIndex: [:each :i | 
		((NameChars includes: each)
			and: [i > 1 or: [(AdditionalNameChars includes: each) not]])
			ifFalse: [^ false]].

	^ true.