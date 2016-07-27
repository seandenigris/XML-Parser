accessing
at: aName ifAbsentPut: aBlock
	self deprecated: 'use #attributeAt:ifAbsentPut: instead'.

	^ self attributeAt: aName ifAbsentPut: aBlock