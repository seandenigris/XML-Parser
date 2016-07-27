assertions
assertStringNode: aStringNode equals: aString withPrintString: aPrintString
	self
		assert: aStringNode string = aString;
		assert: aStringNode contentString = aString;
		assert: aStringNode printString = aPrintString