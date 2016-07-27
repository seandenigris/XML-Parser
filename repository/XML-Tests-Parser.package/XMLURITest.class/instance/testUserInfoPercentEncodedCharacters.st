tests
testUserInfoPercentEncodedCharacters
	| prefix suffix uri |

	prefix := 'mailto:'.
	suffix := '@', self host.
	self asciiCharactersDo: [:each | | encodedURIString |
		encodedURIString := prefix, (XMLURI percentEncodeCharacter: each), suffix.
		uri := encodedURIString asXMLURI.
		self assert: uri userInfo = each asString.

		uri uriString: nil.
		(self isUnreservedCharacter: each)
			ifTrue: [self assert: uri printString = (prefix, each asString, suffix)]
			ifFalse: [self assert: uri printString = encodedURIString]].

	uri := (prefix, '+', suffix) asXMLURI.
	self assert: uri userInfo = '+'.