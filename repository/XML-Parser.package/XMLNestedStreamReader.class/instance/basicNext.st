accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization.
	Normalization does not occur across nested streams."

	| nextChar |

	(nextChar := stream next)
		ifNil: [
			hasNestedStreams ifFalse: [^nil].
			self popCurrentStream.
			[hasNestedStreams and: [stream atEnd]]
				whileTrue: [self popCurrentStream].
			nextChar := stream next].

	nextChar == CarriageReturn
		ifTrue: [
			nextChar := normalizedLineEndingChar.
			(stream peek == LineFeed)
				ifTrue: [stream next]]
		ifFalse: [
			(nextChar == LineFeed)
				ifTrue: [nextChar := normalizedLineEndingChar]].

	^ nextChar.