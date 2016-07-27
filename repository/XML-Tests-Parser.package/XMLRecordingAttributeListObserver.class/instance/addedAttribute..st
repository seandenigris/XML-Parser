notifications
addedAttribute: anAttribute
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #addedAttribute:
			arguments: (Array with: anAttribute))