positioning
pushStream: aStream onClose: aBlock
	peekChar
		ifNotNil: [self pushBackPeekChar].

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [
			(nestedStreams size >= self maxNestedStreams)
				ifTrue: [XMLLimitException signal: 'Cannot further nest input streams'].
			nestedStreams addLast: stream].

	self setStream: aStream onClose: aBlock