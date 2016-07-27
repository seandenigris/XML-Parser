checking
ensureNoElementsRemainOpen
	self openElements copy reverseDo: [:each | self endElement: each].