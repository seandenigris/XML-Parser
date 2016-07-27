private
elementsAt: aSymbol add: anElement

	^ (self elementsDictionary
		at: aSymbol asSymbol
		ifAbsentPut: [self newElementCollection]) add: anElement