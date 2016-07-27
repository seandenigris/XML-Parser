accessing
peek
	"Return the next character from the current input stream."

	^ peekChar ifNil: [peekChar := self basicNext]