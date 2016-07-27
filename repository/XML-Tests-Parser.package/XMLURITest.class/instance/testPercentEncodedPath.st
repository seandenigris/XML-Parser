tests
testPercentEncodedPath
	| uri |

	self asciiCharactersDo: [:each | | encodedURIString |
		encodedURIString := XMLURI percentEncodeCharacter: each.
		uri := encodedURIString asXMLURI.
		self assert: uri path = each asString.

		uri uriString: nil.
		(self isUnreservedCharacter: each)
			ifTrue: [self assert: uri printString = each asString]
			ifFalse: [self assert: uri printString = encodedURIString]].

	uri := '+' asXMLURI.
	self assert: uri path = '+'.