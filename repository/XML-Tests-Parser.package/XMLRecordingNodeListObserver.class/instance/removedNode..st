notifications
removedNode: aNode
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #removedNode:
			arguments: (Array with: aNode))