assertions
assertElement: anElement name: aName attributes: aDictionary contentString: aString
	self
		assert: (anElement isNamed: aName);
		assertElement: anElement attributes: aDictionary;
		assert: anElement contentString = aString