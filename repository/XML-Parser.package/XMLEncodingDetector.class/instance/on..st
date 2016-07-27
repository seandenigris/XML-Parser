initialization
on: aStream
	stream :=
		aStream isXMLConvertingStreamAdapter
			ifTrue: [aStream stream]
			ifFalse: [aStream]