accessing
elementUnqualifiedAt: aSymbol ifAbsent: aBlock
	self deprecated: 'use #elementAt:ifAbsent: with an unqualified name instead'.

	^ self elementAt: aSymbol ifAbsent: aBlock.