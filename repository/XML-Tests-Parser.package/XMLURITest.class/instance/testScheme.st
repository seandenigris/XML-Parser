tests
testScheme
	self
		assert: '' asXMLURI scheme isEmpty;
		assert: '/' asXMLURI scheme isEmpty;
		assert: self absolute asXMLURI scheme isEmpty;
		assert: self absoluteDir asXMLURI scheme isEmpty;
		assert: self absoluteDirRelativeCombined asXMLURI scheme isEmpty;
		assert: self absoluteRelativeCombined asXMLURI scheme isEmpty;
		assert: self domainURIString asXMLURI scheme = 'http';
		assert: self domainURIWithPortString asXMLURI scheme = 'http';
		assert: self emailURIString asXMLURI scheme = 'mailto';
		assert: self fileURIWithHostString asXMLURI scheme = 'file';
		assert: self fileURIString asXMLURI scheme  = 'file';
		assert: self fragment asXMLURI scheme isEmpty;
		assert: self fullURIString asXMLURI scheme = 'http';
		assert: self fullURIWithPortString asXMLURI scheme = 'http';
		assert: self queryString asXMLURI scheme isEmpty;
		assert: self relative asXMLURI scheme isEmpty;
		assert: self relativeAbsoluteCombined asXMLURI scheme isEmpty;
		assert: self schemelessURIString asXMLURI scheme isEmpty;
		assert: self schemelessURIWithPortString asXMLURI scheme isEmpty