streaming
pushStream: aStream from: aSource onClose: aBlock
	peekChar
		ifNotNil: [self pushBackPeekChar].

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [
			(nestedStreams size >= self maxNestedStreams)
				ifTrue: [XMLParserException signal: 'cannot further nest input streams'].
			nestedStreams addLast: stream].
	hasNestedStreams := true.

	self
		stream: aStream
		from: aSource
		onClose: aBlock