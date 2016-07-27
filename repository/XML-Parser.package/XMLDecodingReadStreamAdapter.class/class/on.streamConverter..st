instance creation
on: aStream streamConverter: aStreamConverter
	^ self new
		on: (XMLBinaryReadStreamAdapter onStreamIfBinary: aStream);
		streamConverter: aStreamConverter