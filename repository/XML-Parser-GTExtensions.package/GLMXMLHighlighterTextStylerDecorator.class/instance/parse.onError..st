parsing
parse: aString onError: anError
	| highlightingParser parser |

	highlightingParser := XMLHighlightingParser on: aString.
	parser := highlightingParser parser.
	^ [parser parseDocument.
		highlightingParser asHighlightedText]
		on: XMLParserException
		do: [:error | | errorPosition |
			(errorPosition := parser currentPosition) >= aString size
				ifTrue: [
					highlightingParser
						asHighlightedTextWithRemainderColored: self errorColor
						startingAt: 1]
				ifFalse: [
					highlightingParser
						asHighlightedTextWithRemainderColored: self errorColor
						startingAt: errorPosition - 1]].