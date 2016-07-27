notifying
addedElement: anElement
	self messageRecorder
		recordMessageReceiver: self
		selector: #addedElement:
		arguments: (Array with: anElement)