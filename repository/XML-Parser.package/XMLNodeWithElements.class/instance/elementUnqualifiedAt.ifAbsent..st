accessing
elementUnqualifiedAt: aString ifAbsent: aBlock
	self deprecated: 'use #elementAt:ifAbsent: with an unqualified name instead'.

	^ self elementAt: aString ifAbsent: aBlock.