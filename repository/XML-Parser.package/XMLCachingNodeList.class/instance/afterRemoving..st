private
afterRemoving: aNode
	aNode isElement
		ifTrue: [
			self cachedElements remove: aNode.
			self
				cachedElementsByNameAt: aNode name
				removeElement: aNode.
			aNode hasPrefix
				ifTrue: [
					self
						cachedElementsByNameAt: aNode localName
						removeElement: aNode]].
	super afterRemoving: aNode.