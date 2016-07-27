assertions
should: aBlock removeElement: anElement from: aParent
	self should: aBlock removeElements: (Array with: anElement) from: aParent