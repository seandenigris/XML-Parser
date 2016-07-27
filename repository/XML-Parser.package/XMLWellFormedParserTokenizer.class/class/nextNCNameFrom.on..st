streaming
nextNCNameFrom: aReadStream on: aWriteStream
	| nextChar |

	(aReadStream atEnd
		or: [(NameChars includes: (nextChar := aReadStream peek)) not
			or: [nextChar == $:
				or: [AdditionalNameChars includes: nextChar]]])
		ifTrue: [^ false].
	aWriteStream nextPut: aReadStream next.

	[aReadStream atEnd
		or: [(NameChars includes: (nextChar := aReadStream peek)) not
			or: [nextChar == $:]]]
		whileFalse: [aWriteStream nextPut: aReadStream next].
	^ true.