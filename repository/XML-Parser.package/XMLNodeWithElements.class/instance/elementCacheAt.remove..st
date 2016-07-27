private
elementCacheAt: aSymbol remove: anElement
	(self elementsByName at: aSymbol asSymbol) remove: anElement.

	(self elementsAt: aSymbol)
		ifEmpty: [self elementsByName removeKey: aSymbol asSymbol].