accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization."
	| nextChar |

	stream atEnd
		ifTrue: [
			[self hasNestedStreams and: [stream atEnd]]
				whileTrue: [self popCurrentStream].
			stream atEnd
				ifTrue: [^ nil]].
	(nextChar := stream next) == CarriageReturn
		ifTrue: [
			[stream atEnd and: [self hasNestedStreams]]
				whileTrue: [self popCurrentStream].
			stream atEnd
				ifFalse: [
					(stream peek == LineFeed)
						ifTrue: [stream next]].
			^ normalizedLineEndingChar].
	(nextChar == LineFeed)
		ifTrue: [^ normalizedLineEndingChar].
	isEscapingQuotes
		ifTrue: [^ self escapeQuote: nextChar].

	^ nextChar.