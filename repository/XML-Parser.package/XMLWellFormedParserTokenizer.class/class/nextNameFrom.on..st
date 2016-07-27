streaming
nextNameFrom: aReadStream on: aWriteStream
	(aReadStream atEnd
		or: [(NameChars includes: aReadStream peek) not
			or: [NonNameStartCharNameChars includes: aReadStream peek]])
		ifTrue: [^ false].
	aWriteStream nextPut: aReadStream next.

	[aReadStream atEnd not
		and: [NameChars includes: aReadStream peek]]
		whileTrue: [aWriteStream nextPut: aReadStream next].
	^ true.