assertions
assertElement: anElement attribute: aSymbol is: aValue
	aValue
		ifEmpty: [self assert: (anElement attributeAt: aSymbol) isNil]
		ifNotEmpty: [self assert: (anElement attributeAt: aSymbol) = aValue].
	self
		assert: (anElement at: aSymbol) = aValue;
		assert: (anElement @ aSymbol) = aValue