tests
testURIEquality
	| fullUri string |

	string := self fullURIString.
	fullUri := string asXMLURI.
	self
		assert: fullUri = fullUri;
		assert: fullUri = string asXMLURI;
		deny: fullUri = (string copyReplaceAll: self scheme with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self host with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self absolute with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self queryString with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self fragment with: 'new') asXMLURI.