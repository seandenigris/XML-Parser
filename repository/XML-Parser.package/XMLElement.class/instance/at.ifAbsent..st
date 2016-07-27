accessing
at: aName ifAbsent: aBlock	
	self deprecated: 'use #attributeAt:ifAbsent: instead'.

	^ self attributeAt: aName ifAbsent: aBlock