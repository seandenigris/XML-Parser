tests
testURIEquality
	| fullURI string emailURI |

	string := self fullURIString.
	fullURI := string asXMLURI.
	self
		assert: fullURI = fullURI;
		assert: fullURI = string asXMLURI;
		deny: fullURI = (string copyReplaceAll: self scheme with: 'new') asXMLURI;
		deny: fullURI = (string copyReplaceAll: '://' with: ':') asXMLURI;
		deny: fullURI = (string copyReplaceAll: self host with: 'new.new') asXMLURI;
		deny: fullURI = (string copyReplaceAll: self host with: self host, ':80') asXMLURI;
		deny: fullURI = (string copyReplaceAll: self absolute with: '/new') asXMLURI;
		deny: fullURI = (string copyReplaceAll: self queryString with: '?new=new') asXMLURI;
		deny: fullURI = (string copyReplaceAll: self fragment with: '#new') asXMLURI.

	string := self emailURIString.
	emailURI := string asXMLURI.
	self
		assert: emailURI = emailURI;
		assert: emailURI = string asXMLURI;
		deny: emailURI = (string copyReplaceAll: self userInfo with: 'new.new') asXMLURI.