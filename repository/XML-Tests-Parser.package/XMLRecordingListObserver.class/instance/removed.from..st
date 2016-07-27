notifying
removed: anObject from: aList
	self recordNotification:
		(MessageSend
			receiver: self
			selector: #removed:from:
			arguments: (Array with: anObject with: aList))