notifying
removedElement: anElement
	self messageRecorder
		recordMessageReceiver: self
		selector: #removedElement:
		arguments: (Array with: anElement)