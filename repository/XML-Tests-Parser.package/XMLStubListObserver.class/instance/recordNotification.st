notifications
recordNotification
	self notifications add:
		(MessageSend
			receiver: self
			selector: thisContext sender selector
			arguments: thisContext sender arguments)