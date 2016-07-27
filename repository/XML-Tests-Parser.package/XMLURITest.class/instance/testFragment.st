tests
testFragment
	self
		assert: '' asXMLURI fragment isEmpty;
		assert: '/' asXMLURI fragment isEmpty;
		assert: self absolute asXMLURI fragment isEmpty;
		assert: self absoluteDir asXMLURI fragment isEmpty;
		assert: self absoluteDirRelativeCombined asXMLURI fragment isEmpty;
		assert: self absoluteRelativeCombined asXMLURI fragment isEmpty;
		assert: self domainURIString asXMLURI fragment isEmpty;
		assert: self domainURIWithPortString asXMLURI fragment isEmpty;
		assert: self emailURIString asXMLURI fragment isEmpty;
		assert: self fileURIWithHostString asXMLURI fragment isEmpty;
		assert: self fileURIString asXMLURI fragment isEmpty;
		assert: self fragmentURIString asXMLURI fragment = self fragment;
		assert: self fullURIString asXMLURI fragment = self fragment;
		assert: self fullURIWithPortString asXMLURI fragment = self fragment;
		assert: self queryURIString asXMLURI fragment isEmpty;
		assert: self relative asXMLURI fragment isEmpty;
		assert: self relativeAbsoluteCombined asXMLURI fragment isEmpty;
		assert: self schemelessURIString asXMLURI fragment = self fragment;
		assert: self schemelessURIWithPortString asXMLURI fragment = self fragment