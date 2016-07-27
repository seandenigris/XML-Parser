checking
elementsToEndBeforeEnding: anElementName
	self elementsToEnd reset.

	self openElementsReverseDo: [:each |
		each = anElementName
			ifTrue: [^ self elementsToEnd]
			ifFalse: [self elementsToEnd addLast: each]].

	^ self elementsToEnd.