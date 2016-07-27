assertions
assertStringNode: aStringNode hasString: aString printString: aPrintString
	self
		assert: aStringNode string = aString;
		assert: aStringNode contentString = aString;
		assert: aStringNode printString = aPrintString