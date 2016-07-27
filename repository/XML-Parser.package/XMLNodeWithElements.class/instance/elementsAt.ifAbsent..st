accessing
elementsAt: aString ifAbsent: aBlock
	^ (self elementCache elementsNamed: aString) ifEmpty: aBlock.