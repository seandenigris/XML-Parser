notifying
addingNode: aNode
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #addingNode:
			arguments: (Array with: aNode))