tests
testNextMatchAll
	| streamReader readStream currentLineNumber currentColumnNumber currentPosition searchLength |

	streamReader := self newStreamReaderOnSourceXML.
	readStream := self normalizedSourceXML readStream.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	searchLength := 0.
	[readStream atEnd]
		whileFalse: [| search |
			search :=
				String streamContents: [:searchStream |
					searchLength timesRepeat: [
						readStream atEnd
							ifFalse: [searchStream nextPut: readStream next]]].
			self
				deny: (streamReader nextMatchAll: (search copyWithFirst: self absentChar));
				deny: (streamReader nextMatchAll: (search copyWith: self absentChar)).

			"failed matches shouldn't change the position or column/line numbers"
			self
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition.

			self assert: (streamReader nextMatchAll: search).
			(search includes: self normalizedLineEnding)
				ifTrue: [
					currentLineNumber :=
						currentLineNumber + (search occurrencesOf: self normalizedLineEnding).
					currentColumnNumber :=
						(search copyAfterLast: self normalizedLineEnding) size]
				ifFalse: [currentColumnNumber := currentColumnNumber + search size].
			currentPosition := currentPosition + search size.
			self
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition.

			"try a longer match next time"
			searchLength := searchLength + 1].