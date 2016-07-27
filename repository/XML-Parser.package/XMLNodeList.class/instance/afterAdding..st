private
afterAdding: aNode
	aNode isElement
		ifTrue: [self notifyOf: #addedElement: with: aNode]
		ifFalse: [self notifyOf: #addedNode: with: aNode].