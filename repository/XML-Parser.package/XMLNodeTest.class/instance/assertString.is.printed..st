assertions
assertString: aNode is: aString printed: aPrintString
	self
		assert: aNode string = aString;
		assert: aNode contentString = aString;
		assert: aNode printString = aPrintString