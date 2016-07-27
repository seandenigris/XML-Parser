instance creation
onExternalStream: aReadStream
	^ self on: (XMLBinaryReadStreamAdapter onStreamIfBinary: aReadStream)