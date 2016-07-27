private
afterAdding: aNode
	aNode addObserver: self.
	aNode isElement
		ifTrue: [self notifyOf: #addedElement: with: aNode].
	self notifyOf: #addedNode: with: aNode.