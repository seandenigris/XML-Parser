assertions
assertCData: aCDataNode hasString: aString
	self
		assertStringNode: aCDataNode
		hasString: aString
		printString: '<![CDATA[', aString, ']]>'