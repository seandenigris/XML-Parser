tests
test062elementPrinting
	| element attributes |

	element := (XMLElement named: 'foo').
	attributes := XMLOrderPreservingDictionary with: 'b'->'two' with: 'a'->'one'.
	self
		assert: element printString = '<foo></foo>';
		assert: (element contentString: 'test') printString = '<foo>test</foo>';
		assert: (element setAttributes: attributes) printString = '<foo b="two" a="one">test</foo>'