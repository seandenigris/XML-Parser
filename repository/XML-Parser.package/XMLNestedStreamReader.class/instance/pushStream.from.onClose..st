streaming
pushStream: aStream from: aSource onClose: aBlock
	"Continue parsing from the new nested stream."
	peekChar ifNotNil: [self pushBack: ''].

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [
			"This stops unending recursive entity expansion"
			(nestedStreams size >= maxNestedStreams)
				ifTrue: [XMLParserException signal: 'cannot further nest input streams'].
			nestedStreams addLast: stream].
	hasNestedStreams := true.

	self
		stream: aStream
		from: aSource
		onClose: aBlock