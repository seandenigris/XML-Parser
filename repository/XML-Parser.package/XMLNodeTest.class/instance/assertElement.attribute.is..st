assertions
assertElement: anElement attribute: aString is: aValue
	self
		assert: (anElement includesAttribute: aString);
		assert: (anElement attributeAt: aString) = aValue;
		assert: (anElement at: aString) = aValue;
		assert: (anElement @ aString) = aValue