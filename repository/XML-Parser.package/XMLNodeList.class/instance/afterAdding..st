private
afterAdding: aNode
	aNode addObserver: self.
	aNode isElement
		ifTrue: [
			((self last == aNode) or: [(self findElementAfter: aNode) isNil])
				ifTrue: [self elementAddedAtEnd: aNode]
				ifFalse: [self elementInsertedBeforeEnd: aNode].
			self notifyOf: #addedElement: with: aNode].
	self notifyOf: #addedNode: with: aNode.