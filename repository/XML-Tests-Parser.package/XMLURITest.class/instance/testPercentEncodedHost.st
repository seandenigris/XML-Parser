tests
testPercentEncodedHost
	| prefix uri |

	prefix := 'http://'.
	self asciiCharactersDo: [:each | | lowercasedChar |
		uri := (prefix, (XMLURI percentEncodeCharacter: each)) asXMLURI.
		lowercasedChar := each asLowercase.
		self assert: uri host = lowercasedChar asString.

		uri uriString: nil.
		(self isUnreservedCharacter: each)
			ifTrue: [
				self assert:
					uri printString =
						(prefix copyWith: lowercasedChar)]
			ifFalse: [
				self assert:
					uri printString =
						(prefix, (XMLURI percentEncodeCharacter: lowercasedChar))]].

	uri := (prefix, '+') asXMLURI.
	self assert: uri host = '+'.