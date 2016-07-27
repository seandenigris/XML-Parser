tests
testNextMatchFollowedBy
	| streamReader readStream currentLineNumber currentColumnNumber currentPosition firstChar |

	streamReader := self newStreamReaderOnSourceXML.
	readStream := self normalizedSourceXML readStream.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	[readStream atEnd
		or: [
			firstChar := readStream next.
			readStream atEnd]]
		whileFalse: [| secondChar |
			secondChar := readStream next.
			self
				deny: (streamReader nextMatch: firstChar followedBy: self absentChar);
				deny: (streamReader nextMatch: self absentChar followedBy: secondChar).

			"failed matches shouldn't change the position or column/line numbers"
			self
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition.

			self assert: (streamReader nextMatch: firstChar followedBy: secondChar).
			firstChar = self normalizedLineEnding
				ifTrue: [
					currentLineNumber := currentLineNumber + 1.
					currentColumnNumber := 0]
				ifFalse: [currentColumnNumber := currentColumnNumber + 1].
			secondChar = self normalizedLineEnding
				ifTrue: [
					currentLineNumber := currentLineNumber + 1.
					currentColumnNumber := 0]
				ifFalse: [currentColumnNumber := currentColumnNumber + 1].
			currentPosition := currentPosition + 2.
			self
				assert: streamReader currentLineNumber = currentLineNumber;
				assert: streamReader currentColumnNumber = currentColumnNumber;
				assert: streamReader currentPosition = currentPosition].