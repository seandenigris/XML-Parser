tests
testPrinting
	self
		assert: self nodeClass new printString = '<![CDATA[]]>';
		assert: (self nodeClass string: self markupString) printString = ('<![CDATA[', self markupString, ']]>').