accessing
setStream: aNewStream onClose: aBlock
	stream :=
		XMLPeekableStreamAdapter
			on: aNewStream
			onClose: aBlock