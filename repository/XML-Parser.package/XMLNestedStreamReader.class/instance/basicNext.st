private
basicNext
	"Returns the next character in the stream for #next and #peek with CR/LF/CRLF
	line endings normalized (to LF by default) and quotes escaped when needed."
	| nextChar |

	stream atEnd
		ifTrue: [
			self popNestedStreamWhileAtEnd.
			stream atEnd
				ifTrue: [^ nil]].
	(nextChar := stream next) == LFCharacter
		ifTrue: [^ normalizedLineEndingChar].
	nextChar == CRCharacter
		ifTrue: [
			stream atEnd
				ifTrue: [self popNestedStreamWhileAtEnd].
			stream atEnd
				ifFalse: [
					stream peek == LFCharacter
						ifTrue: [stream next]].
			^ normalizedLineEndingChar].
	isEscapingQuotes
		ifTrue: [^ self asEscapedCharacterIfQuote: nextChar].
	^ nextChar.