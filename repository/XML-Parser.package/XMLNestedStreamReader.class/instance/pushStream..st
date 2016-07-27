streaming
pushStream: aStream
	"Continue parsing from the new nested stream."
	self unpeek.

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [nestedStreams addLast: stream].

	self stream: aStream.