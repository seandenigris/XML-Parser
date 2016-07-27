private
popNestedStreamWhileAtEnd
	[stream atEnd
		and: [nestedStreams size > 0]]
		whileTrue: [self popNestedStream]