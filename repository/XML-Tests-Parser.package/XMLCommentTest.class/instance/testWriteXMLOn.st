tests
testWriteXMLOn
	self
		assert: self nodeClass new printString = '<!---->';
		assert: (self nodeClass string: self markupString) printString = ('<!--', self markupString, '-->')