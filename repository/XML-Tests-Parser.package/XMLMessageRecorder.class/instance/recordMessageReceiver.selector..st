recording
recordMessageReceiver: anObject selector: aSelector
	self recordMessage:
		(MessageSend
			receiver: anObject
			selector: aSelector
			arguments: #())