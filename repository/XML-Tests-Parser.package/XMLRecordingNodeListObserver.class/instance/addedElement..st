notifying
addedElement: anElement
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #addedElement:
			arguments: (Array with: anElement))