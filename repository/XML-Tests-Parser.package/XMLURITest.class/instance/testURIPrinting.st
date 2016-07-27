tests
testURIPrinting
	self
		assert: self fullURIString asXMLURI printString = self fullURIString;
		assert: self schemelessURIString asXMLURI printString = self schemelessURIString;
		assert: self absolute asXMLURI printString = self absolute;
		assert: self relative asXMLURI printString = self relative;
		assert: self absoluteDir asXMLURI printString = self absoluteDir;
		assert: self fileURIString asXMLURI printString = self fileURIString;
		assert: self fileHostURIString asXMLURI printString = self fileHostURIString;
		assert: '/' asXMLURI printString = '/';
		assert: '' asXMLURI printString isEmpty.