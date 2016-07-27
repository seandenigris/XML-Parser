recording
recordMessageReceiver: anObject selector: aSelector arguments: anArgumentCollection
	self recordMessage:
		(MessageSend
			receiver: anObject
			selector: aSelector
			arguments: anArgumentCollection)