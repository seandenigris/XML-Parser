accessing
stream: aNewStream from: aSource onClose: aBlock
	stream :=
		XMLPeekableStreamAdapter
			on: aNewStream
			from:
				(aSource isEmptyOrNil
					ifTrue: [stream ifNotNil: [stream source]]
					ifFalse: [aSource])
			onClose: aBlock