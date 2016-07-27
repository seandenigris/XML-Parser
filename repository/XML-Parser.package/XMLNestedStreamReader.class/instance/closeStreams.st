closing
closeStreams
	nestedStreams ifNotNil: [
		[nestedStreams isEmpty]
			whileFalse: [self popNestedStream]].
	self closeCurrentStream.