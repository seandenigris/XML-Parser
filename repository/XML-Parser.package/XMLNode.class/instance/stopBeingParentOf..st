private
stopBeingParentOf: aNode
	self stopObserving: aNode.
	aNode parent: nil.