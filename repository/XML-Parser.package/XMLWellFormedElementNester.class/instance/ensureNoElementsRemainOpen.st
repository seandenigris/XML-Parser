checking
ensureNoElementsRemainOpen
	self hasOpenElements
		ifTrue: [XMLWellFormednessException signal: 'Unterminated elements: ', self printString]