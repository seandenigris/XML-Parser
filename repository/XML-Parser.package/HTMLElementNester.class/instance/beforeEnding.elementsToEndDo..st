checking
beforeEnding: anElementName elementsToEndDo: aBlock
	self openElementsReverseDo: [:each |
		each = anElementName
			ifTrue: [^ self].
		aBlock value: each].