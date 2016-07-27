closing
closeStreams
	self closeStream.
	[nestedStreams size > 0]
		whileTrue: [
			self
				popNestedStream;
				closeStream].