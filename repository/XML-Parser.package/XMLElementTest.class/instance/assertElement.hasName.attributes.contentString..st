assertions
assertElement: anElement hasName: aName attributes: aDictionary contentString: aString
	self
		assert: (anElement isNamed: aName);
		assertElement: anElement hasAttributes: aDictionary;
		assert: anElement contentString = aString