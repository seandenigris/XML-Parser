notifying
removedAttribute: anAttribute
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #removedAttribute:
			arguments: (Array with: anAttribute))