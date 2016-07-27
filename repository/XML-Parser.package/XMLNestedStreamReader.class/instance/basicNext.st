accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization.
	Normalization does not occur across nested streams."

	| nextChar |

	basicNextChar
		ifNotNil: [
			nextChar := basicNextChar.
			basicNextChar := nil.
			^ nextChar].

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
			(stream atEnd not and: [(basicNextChar := stream next) == LineFeed])
				ifTrue: [basicNextChar := nil]]
		ifFalse: [
			(nextChar == LineFeed)
				ifTrue: [nextChar := normalizedLineEndingChar]].

	^ nextChar.