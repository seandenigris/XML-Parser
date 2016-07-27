private
elementCacheAdd: anElement
	self elements add: anElement.

	self elementCacheAt: anElement localName add: anElement.
	anElement hasPrefix
		ifTrue: [self elementCacheAt: anElement qualifiedName add: anElement].