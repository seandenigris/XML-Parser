accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization.
	Normalization does not occur across nested streams."

	| nextChar |

	(nextChar := stream next) == CarriageReturn
		ifTrue: [
			nextChar := normalizedLineEndingChar.
			currentLineNumber := currentLineNumber + 1.
			(stream peek == LineFeed)
				ifTrue: [stream next]]
		ifFalse: [
			(nextChar == LineFeed)
				ifTrue: [
					nextChar := normalizedLineEndingChar.
					currentLineNumber := currentLineNumber + 1]].

	^ nextChar.