printing
print: aString withPercentEncodingOn: aStream
	"to:do: for speed"
	1 to: aString size do: [:i | | nextChar |
		nextChar := aString at: i.
		(UnreservedCharacters includes: nextChar)
			ifTrue: [aStream nextPut: nextChar]
			ifFalse: [
				self class
					printPercentEncodedCharacter: nextChar
					on: aStream]].