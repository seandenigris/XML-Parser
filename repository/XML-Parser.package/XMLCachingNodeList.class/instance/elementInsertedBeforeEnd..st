private
elementInsertedBeforeEnd: anElement
	self cachedElements
		add: anElement
		before: (self findElementAfter: anElement).
	self
		cachedElementsByNameAt: anElement name
		insertElement: anElement.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				insertElement: anElement].