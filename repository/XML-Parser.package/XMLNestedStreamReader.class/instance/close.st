file open/close
close
	[self hasNestedStreams]
		whileTrue: [self popCurrentStream].
	self closeCurrentStream.