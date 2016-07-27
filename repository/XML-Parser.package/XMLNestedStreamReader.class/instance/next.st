accessing
next
	| nextChar |

	peekChar
		ifNil: [nextChar := self basicNext]
		ifNotNil: [
			nextChar := peekChar.
			peekChar := nil].

	"this is inlined in skipSeparators"
	currentPosition := currentPosition + 1.
	readLimit ifNotNil: [
		currentPosition > readLimit
			ifTrue: [self errorReadLimitExceeded]].
	nextChar == normalizedLineEndingChar
		ifTrue: [
			currentLineNumber := currentLineNumber + 1.
			currentLineStartPosition := currentPosition].

	^ nextChar.