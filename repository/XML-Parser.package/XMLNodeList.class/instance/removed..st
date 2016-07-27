private
removed: aNode
	aNode removeObserver: self.
	aNode isElement
		ifTrue: [
			self elements remove: aNode.
			self elementsByNameAt: aNode name removeElement: aNode.
			aNode hasPrefix
				ifTrue: [self elementsByNameAt: aNode localName removeElement: aNode].
			self notifyOf: #removedElement: with: aNode].
	self notifyOf: #removedNode: with: aNode.