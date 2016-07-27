tests
testWriteXMLOn
	self
		assert: self nodeClass new printString isEmpty;
		assert: (self nodeClass string: self markupString) printString = self escapedString.