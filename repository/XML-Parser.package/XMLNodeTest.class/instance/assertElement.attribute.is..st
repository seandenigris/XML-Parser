assertions
assertElement: anElement attribute: aSymbol is: aValue
	self
		assert: (anElement includesAttribute: aSymbol);
		assert: (anElement attributeAt: aSymbol) = aValue;
		assert: (anElement at: aSymbol) = aValue;
		assert: (anElement @ aSymbol) = aValue