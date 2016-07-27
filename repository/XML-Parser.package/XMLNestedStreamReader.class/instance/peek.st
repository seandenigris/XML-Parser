accessing
peek
	"Return the next character from the current input stream."

	^ peekChar
		ifNil: [
			stream atEnd
				ifTrue: [
					nestedStreams ifNil: [^nil].
					self popCurrentStream.
					[stream atEnd and: [nestedStreams notNil]]
						whileTrue: [self popCurrentStream].
					stream atEnd
						ifTrue: [^ nil]].
			peekChar := self basicNext]