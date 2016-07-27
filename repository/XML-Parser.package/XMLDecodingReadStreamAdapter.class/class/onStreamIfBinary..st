instance creation
onStreamIfBinary: aStream
	| binaryReadStreamAdapter |

	binaryReadStreamAdapter :=
		XMLBinaryReadStreamAdapter onStreamIfBinary: aStream.
	binaryReadStreamAdapter == aStream
		ifTrue: [^ aStream]
		ifFalse: [
			^ self new
				on: binaryReadStreamAdapter;
				streamConverter: XMLStreamConverter default].