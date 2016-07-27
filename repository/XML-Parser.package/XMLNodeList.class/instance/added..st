private
added: aNode
	aNode addObserver: self.
	aNode isElement
		ifTrue: [
			self last == aNode
				ifTrue: [self elementAddedAtEnd: aNode]
				ifFalse: [self elementInsertedBeforeEnd: aNode].
			self notifyOf: #addedElement: with: aNode].
	self notifyOf: #addedNode: with: aNode.