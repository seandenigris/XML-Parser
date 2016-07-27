checking
elementsToEndBeforeEnding: anElementName do: aBlock
	self openElementsReverseDo: [:each |
		each = anElementName
			ifTrue: [^ self].
		aBlock value: each].