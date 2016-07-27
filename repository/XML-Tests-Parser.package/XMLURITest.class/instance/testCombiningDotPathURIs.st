tests
testCombiningDotPathURIs
	| relativePathUri absolutePathUri fullUri |

	relativePathUri := self relative asXMLURI.
	self
		assert: (relativePathUri / '.') = 'relative/' asXMLURI;
		assert: (relativePathUri / './.') = 'relative/' asXMLURI;
		assert: (relativePathUri / './path') = relativePathUri;
		assert: (relativePathUri / ('.', self absolute)) = self relativeAbsoluteCombined asXMLURI.

	absolutePathUri := self absolute asXMLURI.
	self
		assert: (absolutePathUri / '.') = '/absolute/' asXMLURI;
		assert: (absolutePathUri / './.') = '/absolute/' asXMLURI;
		assert: (absolutePathUri / './path') = absolutePathUri;
		assert: (absolutePathUri / ('./', self relative)) = self absoluteRelativeCombined asXMLURI.

	fullUri := self fullURIString asXMLURI.
	self
		assert: (fullUri / '.') = (self domain, '/absolute/') asXMLURI;
		assert: (fullUri / './.') = (self domain, '/absolute/') asXMLURI;
		assert: (fullUri / './path') = (self domain, self absolute) asXMLURI;
		assert: (fullUri / ('./', self relative)) = (self domain, self absoluteRelativeCombined) asXMLURI.