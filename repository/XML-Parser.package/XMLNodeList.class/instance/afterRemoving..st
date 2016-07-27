private
afterRemoving: aNode
	aNode isElement
		ifTrue: [self notifyOf: #removedElement: with: aNode]
		ifFalse: [self notifyOf: #removedNode: with: aNode].