private
elementCacheAt: aString add: anElement
	(self elementsByName
		at: aString
		ifAbsentPut: [self newElements]) add: anElement