private
afterRemoving: aNode
	aNode isElement
		ifTrue: [
			self elements remove: aNode.
			self elementsByNameAt: aNode name removeElement: aNode.
			aNode hasPrefix
				ifTrue: [self elementsByNameAt: aNode localName removeElement: aNode]].
	super afterRemoving: aNode.