assertions
assertString: aNode is: aString printed: aPrintString
	self
		assert: aNode string = aString;
		assert: aNode characterData = aString;
		assert: aNode asString = aPrintString