tests
testPercentEncodeCharacter
	self asciiCharactersDo: [:each | | encoded |
		encoded := XMLURI percentEncodeCharacter: each.
		self
			assert: encoded size = 3;
			assert: encoded first == $%;
			assert:
				(XMLIntegerReader
					readFrom: encoded allButFirst
					withBase: 16) = each asciiValue]