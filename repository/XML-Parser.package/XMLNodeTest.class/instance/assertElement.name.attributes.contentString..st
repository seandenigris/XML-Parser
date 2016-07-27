assertions
assertElement: anElement name: aName attributes: aDictionary contentString: aString
	self
		assert: (anElement isNamed: aName);
		assert: anElement attributes = aDictionary;
		assert: anElement contentString = aString