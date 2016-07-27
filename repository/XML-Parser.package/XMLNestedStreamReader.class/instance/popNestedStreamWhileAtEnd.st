private
popNestedStreamWhileAtEnd
	[nestedStreams size > 0]
		whileTrue: [
			self
				closeStream;
				popNestedStream.
			stream atEnd
				ifFalse: [^ self]]