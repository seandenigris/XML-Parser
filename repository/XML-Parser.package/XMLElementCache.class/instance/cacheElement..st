accessing
cacheElement: anElement
	self elements add: anElement.
	self
		cacheElement: anElement
		underName: anElement localName.
	anElement hasPrefix
		ifTrue: [
			self
				cacheElement: anElement
				underName: anElement qualifiedName]