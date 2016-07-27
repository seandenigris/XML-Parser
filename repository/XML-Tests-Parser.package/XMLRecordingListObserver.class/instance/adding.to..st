notifying
adding: anObject to: aList
	self messageRecorder
		recordMessageReceiver: self
		selector: #adding:to:
		arguments: (Array with: anObject with: aList)