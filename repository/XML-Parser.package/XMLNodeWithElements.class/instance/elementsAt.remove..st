private
elementsAt: aSymbol remove: anElement

	(self elementsDictionary
		at: aSymbol
		ifAbsent: [^ nil])
			remove: anElement
			ifAbsent: [^ nil].
	(self elementsDictionary at: aSymbol)
		ifEmpty: [self elementsDictionary removeKey: aSymbol].

	^ anElement.