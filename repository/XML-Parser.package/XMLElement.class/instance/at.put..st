accessing
at: aName put: aValue
	self deprecated: 'use #attributeAt:put: instead'.

	^ self attributeAt: aName put: aValue