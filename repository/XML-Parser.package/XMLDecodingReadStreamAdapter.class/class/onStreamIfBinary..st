instance creation
onStreamIfBinary: aStream
	| streamAdapter |

	streamAdapter := XMLBinaryReadStreamAdapter onStreamIfBinary: aStream.
	streamAdapter == aStream
		ifTrue: [^ aStream]
		ifFalse: [
			^ self new
				on: streamAdapter;
				streamConverter: XMLStreamConverter default]