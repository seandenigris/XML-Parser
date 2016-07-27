accessing
stream: aStream
	aStream isDecodingReadStreamAdapter
		ifTrue: [stream := aStream]
		ifFalse: [stream := XMLDecodingReadStreamAdapter onStreamIfBinary: aStream]