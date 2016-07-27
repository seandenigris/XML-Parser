tests
testXMLParserASCIIValue
	| characterSet |

	characterSet := BitmapCharacterSet new.
	self
		assert: nil xmlParserASCIIValue isZero;
		deny: (characterSet xmlParserIncludes: nil).
	(0 to: 16rF0000) do: [:each | | char |
		char := each asCharacter.
		self
			assert: char xmlParserASCIIValue = each;
			deny: (characterSet xmlParserIncludes: char).
		characterSet add: char.
		self assert: (characterSet xmlParserIncludes: char)].
	self assert: (characterSet xmlParserIncludes: nil).