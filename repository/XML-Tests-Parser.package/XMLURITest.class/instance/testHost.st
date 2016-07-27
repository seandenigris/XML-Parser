tests
testHost
	self
		assert: '' asXMLURI host isEmpty;
		assert: '/' asXMLURI host isEmpty;
		assert: self absolute asXMLURI host isEmpty;
		assert: self absoluteDir asXMLURI host isEmpty;
		assert: self absoluteDirRelativeCombined asXMLURI host isEmpty;
		assert: self absoluteRelativeCombined asXMLURI host isEmpty;
		assert: self domainURIString asXMLURI host = self host;
		assert: self domainURIWithPortString asXMLURI host = self host;
		assert: self emailURIString asXMLURI host = self host;
		assert: self fileURIWithHostString asXMLURI host = self host;
		assert: self fileURIString asXMLURI host isEmpty;
		assert: self fragment asXMLURI host isEmpty;
		assert: self fullURIString asXMLURI host = self host;
		assert: self fullURIWithPortString asXMLURI host = self host;
		assert: self queryString asXMLURI host isEmpty;
		assert: self relative asXMLURI host isEmpty;
		assert: self relativeAbsoluteCombined asXMLURI host isEmpty;
		assert: self schemelessURIString asXMLURI host = self host;
		assert: self schemelessURIWithPortString asXMLURI host = self host