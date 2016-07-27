accessing
uncacheElement: anElement
	self elements remove: anElement.

	self
		uncacheElement: anElement
		underName: anElement localName.
	anElement hasPrefix
		ifTrue: [
			self
				uncacheElement: anElement
				underName: anElement qualifiedName].