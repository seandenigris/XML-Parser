tests
testCombiningRelativeURIs
	| domainURI domainURIWithPort absolutePathURI absoluteDirPathURI |

	domainURI := self domain asXMLURI.
	domainURIWithPort := self domainWithPort asXMLURI.
	absolutePathURI := (self domain , self absolute) asXMLURI.
	absoluteDirPathURI := (self domain , self absoluteDir) asXMLURI.
	self
		assert: domainURI / self relative = (self domain , '/' , self relative) asXMLURI;
		assert: domainURI / self absolute = (self domain , self absolute) asXMLURI;
		assert: domainURI / self absoluteDir = (self domain , self absoluteDir) asXMLURI;
		assert: domainURIWithPort / self relative = (self domainWithPort , '/' , self relative) asXMLURI;
		assert: domainURIWithPort / self absolute = (self domainWithPort , self absolute) asXMLURI;
		assert: domainURIWithPort / self absoluteDir = (self domainWithPort , self absoluteDir) asXMLURI;
		assert: absolutePathURI / self relative = (self domain , self absoluteRelativeCombined) asXMLURI;
		assert: absoluteDirPathURI / self relative = (self domain , self absoluteDirRelativeCombined) asXMLURI;
		assert: absolutePathURI / self queryString = (self domain , self absolute , self queryString) asXMLURI;
		assert: absolutePathURI / self fragment = (self domain , self absolute , self fragment) asXMLURI;
		assert: domainURI / self schemelessURIString = self fullURIString asXMLURI.