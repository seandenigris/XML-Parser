accessing
stream: aStream
	"if the stream is not already a decoding adapter,
	then only assume it needs one if it's binary"
	aStream isConvertingStreamAdapter
		ifTrue: [stream := aStream]
		ifFalse: [stream := XMLDecodingReadStreamAdapter onStreamIfBinary: aStream]