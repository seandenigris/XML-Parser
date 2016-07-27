tests
testNextMatchAll
	| streamReader readStream currentLineNumber currentColumnNumber currentPosition searchLength |

	streamReader := self newStreamReaderOnSourceXML.
	readStream := self normalizedSourceXML readStream.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	searchLength := 0.
	[readStream atEnd]
		whileFalse: [| searchStream search |
			searchStream := String new writeStream.
			searchLength timesRepeat: [
				readStream atEnd
					ifFalse: [searchStream nextPut: readStream next]].
			search := searchStream contents.
			self
				deny: (streamReader nextMatchAll: (search copyWithFirst: self absentChar));
				deny: (streamReader nextMatchAll: (search copyWith: self absentChar));
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition.

			(search includes: self normalizedLineEnding)
				ifTrue: [
					currentLineNumber :=
						currentLineNumber + (search occurrencesOf: self normalizedLineEnding).
					currentColumnNumber :=
						(search copyAfterLast: self normalizedLineEnding) size]
				ifFalse: [currentColumnNumber := currentColumnNumber + search size].
			currentPosition := currentPosition + search size.
			self
				assert: (streamReader nextMatchAll: search);
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition.

			searchLength := searchLength + 1].