private
elementCacheAt: aSymbol remove: anElement
	self
		remove: anElement
		from: (self elementsAt: aSymbol ifAbsent: [^ self]).

	(self elementsAt: aSymbol)
		ifEmpty: [self elementsByName removeKey: aSymbol].