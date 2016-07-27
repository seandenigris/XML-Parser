private
elementCacheAt: aSymbol add: anElement
	(self elementsByName
		at: aSymbol asSymbol
		ifAbsentPut: [self newElements]) add: anElement