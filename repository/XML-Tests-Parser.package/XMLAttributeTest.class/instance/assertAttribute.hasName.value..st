assertions
assertAttribute: anAttribute hasName: aName value: aValue
	self
		assert: anAttribute name = aName;
		assert: (anAttribute isNamed: aName);
		assert: anAttribute value = aValue;
		assert: anAttribute printString = (aName, '="', aValue, '"')