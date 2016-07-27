tests
testPercentEncodedFragment
	| uri |

	self asciiCharactersDo: [:each | | encodedURIString |
		encodedURIString := '#', (XMLURI percentEncodeCharacter: each).
		uri := encodedURIString asXMLURI.
		self assert: uri fragment = each asString.

		uri uriString: nil.
		(self isUnreservedCharacter: each)
			ifTrue: [self assert: uri printString = ('#' copyWith: each)]
			ifFalse: [self assert: uri printString = encodedURIString]].

	uri := '#+' asXMLURI.
	self assert: uri fragment = '+'.