closing
close
	(stream respondsTo: #close)
		ifTrue: [stream close]