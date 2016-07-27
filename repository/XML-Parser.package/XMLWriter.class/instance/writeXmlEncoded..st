private
writeXmlEncoded: aString
	| lastIndex nextIndex |
	
	"Unroll the first search to avoid copying"
	lastIndex := 1.
	nextIndex := String
		findFirstInString: aString
		inSet: SpecialCharacters byteArrayMap
		startingAt: lastIndex.
	nextIndex isZero
		ifTrue: [^ self nextPutAll: aString].

	[nextIndex isZero]
		whileFalse: [| char |
			self
				nextPutAll: (aString copyFrom: lastIndex to: nextIndex - 1);
				nextPutAll:
					(((char := aString at: nextIndex) == LineFeed or: [char == CarriageReturn])
						ifTrue: [self lineBreak]
						ifFalse: [CharacterEscapes at: char]).
			lastIndex := nextIndex + 1.
			nextIndex := String
				findFirstInString: aString
				inSet: SpecialCharacters byteArrayMap
				startingAt: lastIndex].
	self nextPutAll: (aString copyFrom: lastIndex to: aString size).