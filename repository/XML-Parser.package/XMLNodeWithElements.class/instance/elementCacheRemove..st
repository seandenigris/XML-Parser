private
elementCacheRemove: anElement
	self elements remove: anElement.

	self elementCacheAt: anElement localName remove: anElement.
	anElement hasPrefix
		ifTrue: [self elementCacheAt: anElement qualifiedName remove: anElement].