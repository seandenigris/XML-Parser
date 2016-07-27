private
elementAddedAtEnd: anElement
	self cachedElements addLast: anElement.
	self
		cachedElementsByNameAt: anElement name
		addElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				addElement: anElement]