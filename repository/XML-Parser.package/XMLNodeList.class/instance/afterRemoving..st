private
afterRemoving: aNode
	aNode removeObserver: self.
	aNode isElement
		ifTrue: [self notifyOf: #removedElement: with: aNode].
	self notifyOf: #removedNode: with: aNode.