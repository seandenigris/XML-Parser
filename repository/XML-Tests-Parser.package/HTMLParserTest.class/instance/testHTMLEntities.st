tests
testHTMLEntities
	| entity character string |

	entity := 'nbsp'.
	character := HTMLParserTokenizer predefinedEntities at: entity.
	string :=
		((HTMLParser parse: '<p>&', entity, ';&', entity, '</p>')
			findElementNamed: 'p') contentString.
	self
		assert: string size = 2;
		assert: string first == character;
		assert: string second == character.
		
	self assert:
		((HTMLParser parse: '<body>&undeclared; &undeclared &;')
			findElementNamed: 'body') contentString = '&undeclared; &undeclared &;'.