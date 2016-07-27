accessing
next
	"Return the next character from the current input stream. If the current
	stream is at end, pop to the next nesting level if there is one."

	| nextChar |

	peekChar
		ifNil: [
			stream atEnd
				ifTrue: [
					nestedStreams ifNil: [^nil].
					self popCurrentStream.
					[stream atEnd and: [nestedStreams notNil]]
						whileTrue: [self popCurrentStream].
					stream atEnd
						ifTrue: [^ nil]].
			^ self basicNext]
		ifNotNil: [
			nextChar := peekChar.
			peekChar := nil.
			^ nextChar].