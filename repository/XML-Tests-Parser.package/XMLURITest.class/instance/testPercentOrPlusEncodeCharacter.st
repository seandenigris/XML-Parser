tests
testPercentOrPlusEncodeCharacter
	self asciiCharactersDo: [:each | | encoded |
		encoded := XMLURI percentOrPlusEncodeCharacter: each.
		each = Character space
			ifTrue: [self assert: encoded = '+']
			ifFalse: [
				self
					assert: encoded size = 3;
					assert: encoded first == $%;
					assert:
						(XMLIntegerReader
							readFrom: encoded allButFirst
							withBase: 16) = each asciiValue]]