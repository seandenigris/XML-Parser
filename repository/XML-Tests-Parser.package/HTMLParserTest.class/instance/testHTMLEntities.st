tests
testHTMLEntities
	| entity string |

	entity := 'nbsp'.
	string := ((HTMLParser parse: '<p>&', entity, ';</p>') findElementNamed: 'p') contentString.
	self
		assert: string size = 1;
		assert: string first == (HTMLParserTokenizer predefinedEntities at: entity).
		

	self assert:
		((HTMLParser parse: '<body>&undeclared;</body>') findElementNamed: 'body')
			contentString isEmpty.