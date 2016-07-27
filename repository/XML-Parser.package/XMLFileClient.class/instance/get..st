retrieving
get: aFullPath
	^ self
		get: aFullPath
		onError: [:error | XMLFileIOException signal: error messageText]