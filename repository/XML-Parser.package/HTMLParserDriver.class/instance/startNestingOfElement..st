element nesting
startNestingOfElement: anElementName
	(self elementNester isOpenUniqueElement: anElementName)
		ifTrue: [^ self].

	self preEndElements:
		(self elementNester elementsToEndBeforeStarting: anElementName).
	self preStartElements:
		(self elementNester elementsToStartBeforeStarting: anElementName).

	super startNestingOfElement: anElementName.