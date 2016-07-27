tests
testNext
	| streamReader currentLineNumber currentColumnNumber currentPosition |

	streamReader := self newStreamReaderOnSourceXML.
	currentLineNumber := 1.
	currentColumnNumber := currentPosition := 0.
	self normalizedSourceXML do: [:each |
		streamReader next == self normalizedLineEnding
			ifTrue: [
				currentLineNumber := currentLineNumber + 1.
				currentColumnNumber := 0]
			ifFalse: [currentColumnNumber := currentColumnNumber + 1].
		currentPosition := currentPosition + 1.
		self
			assert: streamReader currentLineNumber = currentLineNumber;
			assert: streamReader currentColumnNumber = currentColumnNumber;
			assert: streamReader currentPosition = currentPosition].
	self assert: streamReader next isNil.

	streamReader := self newStreamReaderOnSourceXML.
	self
		assert: (streamReader next: self normalizedSourceXML size) = self normalizedSourceXML;
		assert: streamReader currentLineNumber = currentLineNumber;
		assert: streamReader currentColumnNumber = currentColumnNumber;
		assert: streamReader currentPosition = currentPosition;
		assert: (streamReader next: self normalizedSourceXML size) = ''.