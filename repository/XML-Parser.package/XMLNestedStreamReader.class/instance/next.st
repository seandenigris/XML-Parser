accessing
next
	| nextChar |

	peekChar
		ifNil: [nextChar := self basicNext]
		ifNotNil: [
			nextChar := peekChar.
			peekChar := nil].

	nextChar == normalizedLineEndingChar
		ifTrue: [currentLineNumber := currentLineNumber + 1].
	readLimit ifNotNil: [
		(readLimit := readLimit - 1) >= 0
			ifFalse: [XMLLimitException signal: 'Security read limit on input exceeded']].

	^ nextChar.