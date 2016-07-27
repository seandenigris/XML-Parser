private
stream: aStream
	super stream:
		(aStream isConvertingStreamAdapter
			ifTrue: [aStream stream]
			ifFalse: [aStream])