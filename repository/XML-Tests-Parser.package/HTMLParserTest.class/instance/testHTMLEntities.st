tests
testHTMLEntities
	| entity string |

	entity := 'nbsp'.
	string := ((HTMLParser parse: '<p>&', entity, ';</p>') findElementNamed: 'p') contentString.
	self
		assert: string size = 1;
		assert: string first == (HTMLParserTokenizer predefinedEntities at: entity).
		
	self assert:
		((HTMLParser parse: '<body>&undeclared; &undeclared &;')
			findElementNamed: 'body') contentString = '&undeclared; &undeclared &;'.