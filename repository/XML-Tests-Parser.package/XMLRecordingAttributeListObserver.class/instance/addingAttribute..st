notifying
addingAttribute: anAttribute
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #addingAttribute:
			arguments: (Array with: anAttribute))