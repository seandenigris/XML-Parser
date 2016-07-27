tests
testPathNonPercentEncodedCharacters
	| firstSegment secondSegment uri |

	firstSegment := self nonPercentEncodedPathCharacters copyWithout: $:.
	secondSegment := self nonPercentEncodedPathCharacters.
	uri := (firstSegment, '/', secondSegment) asXMLURI.
	self assert:
		uri pathSegments =
			(OrderedCollection with: firstSegment with: secondSegment).