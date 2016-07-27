file open/close
close
	stream close.
	nestedStreams ifNotNil: [nestedStreams reverseDo: [:each | each close]].