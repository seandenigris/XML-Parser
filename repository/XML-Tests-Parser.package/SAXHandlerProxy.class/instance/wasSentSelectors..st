testing
wasSentSelectors: aSelectorArray
	^ (self messageRecorder messagesCollect: [:each | each selector]) asArray =
		aSelectorArray asArray