accessing
isCharEscape: entityValue
	^entityValue size = 1
		and: [CharEscapes includes: entityValue first]