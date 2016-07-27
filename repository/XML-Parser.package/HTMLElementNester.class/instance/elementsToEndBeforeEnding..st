checking
elementsToEndBeforeEnding: anElementName
	self elementsToEnd reset.

	self openElements reverseDo: [:each |
		each = anElementName
			ifTrue: [^ self elementsToEnd]
			ifFalse: [self elementsToEnd addLast: each]].

	^ self elementsToEnd.