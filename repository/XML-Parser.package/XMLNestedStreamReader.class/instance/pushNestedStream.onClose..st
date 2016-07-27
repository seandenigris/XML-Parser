private
pushNestedStream: aStream onClose: aBlock
	nestedStreams size >= self maxNestedStreams
		ifTrue: [self errorNestingLimitExceeded].
	nestedStreams addLast: aStream -> aBlock.