notifications
added: anObject to: aList
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #added:to:
			arguments: (Array with: anObject with: aList))