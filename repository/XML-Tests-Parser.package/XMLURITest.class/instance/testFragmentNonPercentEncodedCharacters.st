tests
testFragmentNonPercentEncodedCharacters
	| fragment uri |

	fragment := self nonPercentEncodedPathCharacters , '/?'.
	uri := ('#', fragment) asXMLURI.
	self assert: uri fragment = fragment.