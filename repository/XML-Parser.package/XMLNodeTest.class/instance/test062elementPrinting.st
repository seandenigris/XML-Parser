tests
test062elementPrinting
	| element attributes |

	element := (XMLElement named: #foo).
	attributes := Dictionary with: #a->'one' with: #b->'two'.
	self
		assert: element asString = '<foo></foo>';
		assert: (element contentString: 'test') printString = '<foo>test</foo>';
		assert: (element setAttributes: attributes) printString = '<foo a="one" b="two">test</foo>';
		assert: (element equalTo: (XMLElement
			named: 'foo'
			attributes: (Dictionary with: #a->'one' with: #b->'two')
			contentString: 'test'))