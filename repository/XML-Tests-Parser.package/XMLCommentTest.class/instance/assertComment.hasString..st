assertions
assertComment: aComment hasString: aString
	self
		assert: aComment string = aString;
		assert: aComment printString = ('<!--', aString, '-->')