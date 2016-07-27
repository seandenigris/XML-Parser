testing
hasOpenElement: anElementName
	^ (self openElementsByName at: anElementName ifAbsent: [0]) > 0