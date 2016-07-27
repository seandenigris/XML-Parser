accessing
allSentMessagesNamed: aName
	^ self sentHandlerMessages select: [:each | each selector = aName asSymbol]