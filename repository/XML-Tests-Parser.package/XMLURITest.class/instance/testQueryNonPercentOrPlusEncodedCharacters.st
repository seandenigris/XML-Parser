tests
testQueryNonPercentOrPlusEncodedCharacters
	| queryKey queryValue uri |

	queryKey := (self nonPercentEncodedPathCharacters copyWithoutAll: '=&+'), '/?'.
	queryValue :=  (self nonPercentEncodedPathCharacters copyWithoutAll: '&+'), '/?'.
	uri := ('?', queryKey, '=', queryValue) asXMLURI.
	self assert:
		uri query =
			(OrderPreservingStringDictionary with: queryKey -> queryValue).