tests
testCombiningRelativeURIs
	| domainUri absolutePathUri absoluteDirPathUri |

	domainUri := self domain asXMLURI.
	absolutePathUri := (self domain, self absolute) asXMLURI.
	absoluteDirPathUri := (self domain, self absoluteDir) asXMLURI.
	self
		assert: (domainUri / self absolute) = (self domain, self absolute) asXMLURI;
		assert: (domainUri / self absoluteDir) = (self domain, self absoluteDir) asXMLURI;
		assert: (absolutePathUri / self relative) = (self domain, self absoluteRelativeCombined) asXMLURI;
		assert: (absoluteDirPathUri / self relative) = (self domain, self absoluteDirRelativeCombined) asXMLURI;
		assert: (absolutePathUri / self queryString) = (self domain, self absolute, self queryString) asXMLURI;
		assert: (absolutePathUri / self fragment) = (self domain, self absolute, self fragment) asXMLURI;
		assert: (domainUri / self schemelessURIString) = self fullURIString asXMLURI.