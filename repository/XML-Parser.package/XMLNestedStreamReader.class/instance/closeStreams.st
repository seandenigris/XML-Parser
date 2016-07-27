closing
closeStreams
	[nestedStreams size > 0]
		whileTrue: [self popNestedStream].
	self closeCurrentStream.