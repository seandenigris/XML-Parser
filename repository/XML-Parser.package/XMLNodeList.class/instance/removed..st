private
removed: aNode
	self stopObserving: aNode.
	aNode isElement
		ifTrue: [
			self elements remove: aNode.
			self elementsByNameAt: aNode localName removeElement: aNode.
			aNode hasPrefix
				ifTrue: [self elementsByNameAt: aNode qualifiedName removeElement: aNode].
			self notifyOf: #removedElement: with: aNode].
	self notifyOf: #removedNode: with: aNode.