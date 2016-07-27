assertions
should: aBlock addElement: anElement to: aParent
	self should: aBlock addElements: (Array with: anElement) to: aParent