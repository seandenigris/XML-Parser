private
elementCacheRemove: anElement
	self remove: anElement from: self elements.

	self elementCacheAt: anElement localName remove: anElement.
	anElement hasPrefix
		ifTrue: [self elementCacheAt: anElement tag remove: anElement].