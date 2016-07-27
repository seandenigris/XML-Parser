notifications
removedElement: anElement
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #removedElement:
			arguments: (Array with: anElement))