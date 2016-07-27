private
popCurrentStream
	stream close.
	stream := nestedStreams removeLast.