notifying
addingAttribute: anAttribute
	self messageRecorder
		recordMessageReceiver: self
		selector: #addingAttribute:
		arguments: (Array with: anAttribute)