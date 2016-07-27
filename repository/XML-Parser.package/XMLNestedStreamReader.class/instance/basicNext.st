private
basicNext
	"Returns next character in the stream after performing line-ending normalization."
	| nextChar |

	stream atEnd
		ifTrue: [
			self popNestedStreamWhileAtEnd.
			stream atEnd
				ifTrue: [^ nil]].
	(nextChar := stream next) == CRCharacter
		ifTrue: [
			self popNestedStreamWhileAtEnd.
			stream atEnd
				ifFalse: [
					stream peek == LFCharacter
						ifTrue: [stream next]].
			nextChar := normalizedLineEndingChar]
		ifFalse: [
			nextChar == LFCharacter
				ifTrue: [nextChar := normalizedLineEndingChar]].
	isEscapingQuotes
		ifTrue: [^ self escapeNextQuoteCharacter: nextChar]
		ifFalse: [^ nextChar].