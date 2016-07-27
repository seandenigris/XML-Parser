streaming
pushStream: aStream
	"Continue parsing from the new nested stream."
	(peekChar isNil and: [basicNextChar isNil])
		ifFalse: [self pushBack: ''].

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [nestedStreams addLast: stream].
	hasNestedStreams := true.

	self stream: aStream.