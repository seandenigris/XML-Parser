instance creation
onStreamIfBinary: aStream
	| streamAdapter |

	(streamAdapter := XMLBinaryReadStreamAdapter onStreamIfBinary: aStream) == aStream
		ifTrue: [^ aStream]
		ifFalse: [^ self on: streamAdapter]