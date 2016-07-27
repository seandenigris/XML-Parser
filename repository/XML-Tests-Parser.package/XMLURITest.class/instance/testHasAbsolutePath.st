tests
testHasAbsolutePath
	self
		deny: '' asXMLURI hasAbsolutePath;
		assert: '/' asXMLURI hasAbsolutePath;
		assert: self absolute asXMLURI hasAbsolutePath;
		assert: self absoluteDir asXMLURI hasAbsolutePath;
		assert: self absoluteDirRelativeCombined asXMLURI hasAbsolutePath;
		assert: self absoluteRelativeCombined asXMLURI hasAbsolutePath;
		deny: self domainURIString asXMLURI hasAbsolutePath;
		deny: self domainURIWithPortString asXMLURI hasAbsolutePath;
		deny: self emailURIString asXMLURI hasAbsolutePath;
		assert: self fileURIWithHostString asXMLURI hasAbsolutePath;
		assert: self fileURIString asXMLURI hasAbsolutePath;
		deny: self fragment asXMLURI hasAbsolutePath;
		assert: self fullURIString asXMLURI hasAbsolutePath;
		assert: self fullURIWithPortString asXMLURI hasAbsolutePath;
		deny: self queryString asXMLURI hasAbsolutePath;
		deny: self relative asXMLURI hasAbsolutePath;
		deny: self relativeAbsoluteCombined asXMLURI hasAbsolutePath;
		assert: self schemelessURIString asXMLURI hasAbsolutePath;
		assert: self schemelessURIWithPortString asXMLURI hasAbsolutePath