notifications
adding: anObject to: aList
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #adding:to:
			arguments: (Array with: anObject with: aList))