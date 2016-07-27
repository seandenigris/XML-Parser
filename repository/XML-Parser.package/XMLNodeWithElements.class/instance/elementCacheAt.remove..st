private
elementCacheAt: aString remove: anElement
	(self elementsByName at: aString) remove: anElement.

	(self elementsAt: aString)
		ifEmpty: [self elementsByName removeKey: aString].