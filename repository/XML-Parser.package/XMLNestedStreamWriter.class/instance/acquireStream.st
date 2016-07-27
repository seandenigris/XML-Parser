private
acquireStream
	| stream |

	(nextStreamIndex <= streams size)
		 ifFalse: [self grow].

	(stream := streams at: nextStreamIndex) reset.
	nextStreamIndex := nextStreamIndex + 1.
	^ stream.