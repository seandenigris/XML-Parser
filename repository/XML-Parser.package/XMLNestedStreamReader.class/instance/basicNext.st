accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization.
	Normalization does not occur across nested streams."

	| nextChar |

	stream atEnd
		ifTrue: [
			hasNestedStreams ifFalse: [^nil].
			self popCurrentStream.
			[hasNestedStreams and: [stream atEnd]]
				whileTrue: [self popCurrentStream].
			stream atEnd
				ifTrue: [^ nil]].

	(nextChar := stream next) == CarriageReturn
		ifTrue: [
			nextChar := normalizedLineEndingChar.
			(stream peek == LineFeed)
				ifTrue: [stream next]]
		ifFalse: [
			(nextChar == LineFeed)
				ifTrue: [nextChar := normalizedLineEndingChar]].

	^ nextChar.