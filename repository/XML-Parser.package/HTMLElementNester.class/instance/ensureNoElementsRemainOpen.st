checking
ensureNoElementsRemainOpen
	self openElements copy reverseDo: [:each | self endedElement: each].