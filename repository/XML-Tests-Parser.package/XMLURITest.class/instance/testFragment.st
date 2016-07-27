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
		assert: self fragment asXMLURI fragment = self fragment allButFirst;
		assert: self fullURIString asXMLURI fragment = self fragment allButFirst;
		assert: self fullURIWithPortString asXMLURI fragment = self fragment allButFirst;
		assert: self queryString asXMLURI fragment isEmpty;
		assert: self relative asXMLURI fragment isEmpty;
		assert: self relativeAbsoluteCombined asXMLURI fragment isEmpty;
		assert: self schemelessURIString asXMLURI fragment = self fragment allButFirst;
		assert: self schemelessURIWithPortString asXMLURI fragment = self fragment allButFirst