checking
endNesting
	self hasOpenElements
		ifTrue: [XMLWellFormednessException signal: 'Unterminated elements: ', self printString]