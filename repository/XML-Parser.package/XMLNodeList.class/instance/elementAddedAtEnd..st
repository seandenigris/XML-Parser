private
elementAddedAtEnd: anElement
	self elements add: anElement.
	self
		elementsByNameAt: anElement name
		addElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				elementsByNameAt: anElement localName
				addElement: anElement]