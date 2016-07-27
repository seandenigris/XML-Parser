notifications
addedNode: aNode
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #addedNode:
			arguments: (Array with: aNode))