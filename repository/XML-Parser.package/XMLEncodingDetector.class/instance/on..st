initialization
on: aStream
	stream :=
		aStream isConvertingStreamAdapter
			ifTrue: [aStream stream]
			ifFalse: [aStream]