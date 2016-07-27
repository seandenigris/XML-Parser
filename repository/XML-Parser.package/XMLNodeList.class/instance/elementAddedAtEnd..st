private
elementAddedAtEnd: anElement
	self elements add: anElement.
	self
		elementsByNameAt: anElement localName
		addElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement qualifiedName
				addElement: anElement]