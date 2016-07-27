notifying
addingNode: aNode
	self messageRecorder
		recordMessageReceiver: self
		selector: #addingNode:
		arguments: (Array with: aNode)