accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization."

	| nextChar |

	(nextChar := stream next)
		ifNil: [
			[stream atEnd and: [self hasNestedStreams]]
				whileTrue: [self popCurrentStream].
			nextChar := stream next].

	nextChar == CarriageReturn
		ifTrue: [
			[stream atEnd and: [self hasNestedStreams]]
				whileTrue: [self popCurrentStream].
			(stream peek == LineFeed)
				ifTrue: [stream next].
			^ normalizedLineEndingChar].
	(nextChar == LineFeed)
		ifTrue: [^ normalizedLineEndingChar].

	^ nextChar.