tests
testCombiningRelativeURIs
	| domainUri domainUriWithPort absolutePathUri absoluteDirPathUri |

	domainUri := self domain asXMLURI.
	domainUriWithPort := self domainWithPort asXMLURI.
	absolutePathUri := (self domain, self absolute) asXMLURI.
	absoluteDirPathUri := (self domain, self absoluteDir) asXMLURI.
	self
		assert: (domainUri / self relative) = (self domain, '/', self relative) asXMLURI;
		assert: (domainUri / self absolute) = (self domain, self absolute) asXMLURI;
		assert: (domainUri / self absoluteDir) = (self domain, self absoluteDir) asXMLURI;
		assert: (domainUriWithPort / self relative) = (self domainWithPort, '/', self relative) asXMLURI;
		assert: (domainUriWithPort / self absolute) = (self domainWithPort, self absolute) asXMLURI;
		assert: (domainUriWithPort / self absoluteDir) = (self domainWithPort, self absoluteDir) asXMLURI;
		assert: (absolutePathUri / self relative) = (self domain, self absoluteRelativeCombined) asXMLURI;
		assert: (absoluteDirPathUri / self relative) = (self domain, self absoluteDirRelativeCombined) asXMLURI;
		assert: (absolutePathUri / self queryString) = (self domain, self absolute, self queryString) asXMLURI;
		assert: (absolutePathUri / self fragment) = (self domain, self absolute, self fragment) asXMLURI;
		assert: (domainUri / self schemelessURIString) = self fullURIString asXMLURI.