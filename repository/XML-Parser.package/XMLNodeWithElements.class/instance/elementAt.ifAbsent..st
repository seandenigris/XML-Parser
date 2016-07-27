accessing
elementAt: aSymbol ifAbsent: aBlock
	^ (self
		elementsAt: aSymbol
		ifAbsent: [^ aBlock value]) first