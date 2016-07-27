tests
test062elementPrinting
	| element attributes |

	element := (XMLElement named: #foo).
	(attributes := Dictionary new)
		at: #a put: 'b';
		at: #b put: 'c'.
	self
		assert: element asString = '<foo></foo>';
		assert: (element contentString: 'test') asString = '<foo>test</foo>';
		assert: (element setAttributes: attributes) asString = '<foo a="b" b="c">test</foo>'