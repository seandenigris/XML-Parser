positioning
pushStream: aStream onClose: aBlock
	peekChar
		ifNotNil: [self pushBackPeekChar].

	nestedStreams
		ifNil: [nestedStreams := OrderedCollection with: stream]
		ifNotNil: [
			(nestedStreams size >= self maxNestedStreams)
				ifTrue: [self errorNestingLimitExceeded].
			nestedStreams addLast: stream].

	self setStream: aStream onClose: aBlock