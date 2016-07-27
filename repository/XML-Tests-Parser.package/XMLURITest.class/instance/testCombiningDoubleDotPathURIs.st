tests
testCombiningDoubleDotPathURIs
	| relativePathUri absolutePathUri fullUri |

	relativePathUri := self relative asXMLURI.
	self
		assert: (relativePathUri / '..') isEmpty;
		assert: (relativePathUri / '../..') isEmpty;
		assert: (relativePathUri / ('..', self absolute)) = 'absolute/path' asXMLURI;
		assert: (relativePathUri / ('../..', self absolute)) = 'absolute/path' asXMLURI;
		assert: (relativePathUri / ('../..', self absolute, '/..')) = 'absolute/' asXMLURI;
		assert: (relativePathUri / ('../..', self absolute, '/../..')) isEmpty.

	absolutePathUri := self absolute asXMLURI.
	self
		assert: (absolutePathUri / '..') hasRootPath;
		assert: (absolutePathUri / '../..') isEmpty;
		assert: (absolutePathUri / ('..', self absolute)) = absolutePathUri;
		assert: (absolutePathUri / ('../..', self absolute)) = 'absolute/path' asXMLURI;
		assert: (absolutePathUri / ('../..', self absolute, '/..')) = 'absolute/' asXMLURI;
		assert: (absolutePathUri / ('../..', self absolute, '/../..')) isEmpty.

	fullUri := self fullURIString asXMLURI.
	self
		assert: (fullUri / '..') hasRootPath;
		deny: (fullUri / '../..') hasPath;
		assert: (fullUri / ('..', self absolute)) = (self domain, self absolute) asXMLURI;
		assert: (fullUri / ('../..', self absolute)) = (self domain, self absolute) asXMLURI;
		assert: (fullUri / ('../..', self absolute, '/..')) = (self domain, '/absolute/') asXMLURI;
		assert: (fullUri / ('../..', self absolute, '/../')) = (self domain, '/absolute/') asXMLURI.