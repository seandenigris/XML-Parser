streaming
pushStream: aStream
	"Continue parsing from the new nested stream."
	self unpeek.

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [nestedStreams addLast: stream].
	hasNestedStreams := true.

	self stream: aStream.