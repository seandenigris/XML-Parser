private
popCurrentStream
	stream close.
	stream := nestedStreams removeLast.
	nestedStreams ifEmpty: [hasNestedStreams := false].