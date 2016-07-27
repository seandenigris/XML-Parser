private
popCurrentStream
	stream close.
	stream := nestedStreams removeLast.
	nestedStreams ifEmpty: [nestedStreams := nil].