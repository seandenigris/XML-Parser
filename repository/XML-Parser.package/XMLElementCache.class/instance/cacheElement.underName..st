accessing
cacheElement: anElement underName: aName
	(self elementsByName
		at: aName
		ifAbsentPut: [self newElementList]) add: anElement