tests
testURIEquality
	| fullUri string emailUri |

	string := self fullURIString.
	fullUri := string asXMLURI.
	self
		assert: fullUri = fullUri;
		assert: fullUri = string asXMLURI;
		deny: fullUri = (string copyReplaceAll: self scheme with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: '://' with: ':') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self host with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self absolute with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self queryString with: 'new') asXMLURI;
		deny: fullUri = (string copyReplaceAll: self fragment with: 'new') asXMLURI.

	string := self emailURIString.
	emailUri := string asXMLURI.
	self
		assert: emailUri = emailUri;
		assert: emailUri = string asXMLURI;
		deny: fullUri = (string copyReplaceAll: self userInfo with: 'new') asXMLURI.