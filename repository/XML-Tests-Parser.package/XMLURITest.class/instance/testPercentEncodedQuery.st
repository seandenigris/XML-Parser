tests
testPercentEncodedQuery
	| uri |

	self asciiCharactersDo: [:each | | encodedURIString |
		encodedURIString :=
			'?', (XMLURI percentEncodeCharacter: each), '=', (XMLURI percentEncodeCharacter: each).
		uri := encodedURIString asXMLURI.
		self assert:
			uri query =
				(OrderPreservingStringDictionary with: each asString -> each asString).

		uri uriString: nil.
		(self isUnreservedCharacter: each)
			ifTrue: [self assert: uri printString = ('?', each asString, '=', each asString)]
			ifFalse: [
				each = Character space
					ifTrue: [self assert: uri printString = '?+=+']
					ifFalse: [self assert: uri printString = encodedURIString]]].

	uri := '?+=+' asXMLURI.
	self assert: uri query = (OrderPreservingStringDictionary with: ' ' -> ' ').