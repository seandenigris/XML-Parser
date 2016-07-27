accessing
basicNext
	"Returns next character in the stream after performing line-ending normalization."
	| nextChar |

	stream atEnd
		ifTrue: [
			self popNestedStreamWhileAtEnd.
			stream atEnd
				ifTrue: [^ nil]].
	(nextChar := stream next) == CarriageReturn
		ifTrue: [
			self popNestedStreamWhileAtEnd.
			stream atEnd
				ifFalse: [
					stream peek == LineFeed
						ifTrue: [stream next]].
			nextChar := normalizedLineEndingChar]
		ifFalse: [
			nextChar == LineFeed
				ifTrue: [nextChar := normalizedLineEndingChar]].
	characterEscaper
		ifNil: [^ nextChar]
		ifNotNil: [^ characterEscaper nextCharacter: nextChar].