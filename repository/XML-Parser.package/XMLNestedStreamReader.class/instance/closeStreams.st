file open/close
closeStreams
	[self hasNestedStreams]
		whileTrue: [self popCurrentStream].
	self closeCurrentStream.