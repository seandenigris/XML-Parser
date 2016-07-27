utility
removeDummyElementAccessors
	(self methodsInCategory: self dummyElementAccessorCategory)
		do: [:each | self removeSelector: each].