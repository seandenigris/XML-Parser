closing
close
	isClosed
		ifTrue: [Error signal: 'Cannot close already closed stream']
		ifFalse: [
			(stream respondsTo: #close)
				ifTrue: [stream close].
			isClosed := true]