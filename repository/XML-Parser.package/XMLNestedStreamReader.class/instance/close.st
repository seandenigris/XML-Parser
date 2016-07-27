file open/close
close
	stream close.
	nestedStreams ifNotNil: [nestedStreams do: [:each | each close]].