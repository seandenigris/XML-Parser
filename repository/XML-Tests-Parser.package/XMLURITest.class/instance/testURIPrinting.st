tests
testURIPrinting
	self
		assert: self fullURIString asXMLURI printString = self fullURIString;
		assert: self fullURIWithPortString asXMLURI printString = self fullURIWithPortString;
		assert: self schemelessURIString asXMLURI printString = self schemelessURIString;
		assert: self domain asXMLURI printString = self domain;
		assert: self domainWithPort asXMLURI printString = self domainWithPort;
		assert: self absolute asXMLURI printString = self absolute;
		assert: self relative asXMLURI printString = self relative;
		assert: self absoluteDir asXMLURI printString = self absoluteDir;
		assert: self fileURIString asXMLURI printString = self fileURIString;
		assert: self fileHostURIString asXMLURI printString = self fileHostURIString;
		assert: self emailURIString asXMLURI printString = self emailURIString;
		assert: '/' asXMLURI printString = '/';
		assert: '' asXMLURI printString isEmpty