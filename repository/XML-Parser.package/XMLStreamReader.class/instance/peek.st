accessing
peek
	"Return the next character from the current input stream.

	Due to the potential nesting of original document, included
	documents and replacment texts the streams are held in a stack
	representing the nested streams. The current stream is the top one."

	^ peekChar
		ifNil: [
			nestedStreams ifNotNil: [self checkNestedStream].
			peekChar := self basicNext]