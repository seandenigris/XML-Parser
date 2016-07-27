writing
writeWith: aBlock
	| result stream |

	(nextStreamIndex <= streams size)
		 ifFalse: [self grow].

	(stream := streams at: nextStreamIndex) reset.
	nextStreamIndex := nextStreamIndex + 1.
	"Avoid ensure: for performance"
	result := aBlock value: stream.
	nextStreamIndex := nextStreamIndex - 1.
	^ result.