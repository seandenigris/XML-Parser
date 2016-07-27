tests
testCombiningDotPathURIs
	| absolutePathUri absoluteDirPathUri absoluteRelativeCombinedUri absoluteDirRelativeCombinedUri |

	absolutePathUri := self absolute asXMLURI.
	absoluteDirPathUri := self absoluteDir asXMLURI.
	absoluteRelativeCombinedUri := self absoluteRelativeCombined asXMLURI.
	absoluteDirRelativeCombinedUri := self absoluteDirRelativeCombined asXMLURI.
	self
		assert: (absolutePathUri / './path') = absolutePathUri;
		assert: (absolutePathUri / ('..', self absolute)) = absolutePathUri;
		assert: (absolutePathUri / ('./', self relative)) = absoluteRelativeCombinedUri;
		assert: (absolutePathUri / ('../absolute/', self relative)) = absoluteRelativeCombinedUri;
		assert: (absoluteDirPathUri / ('./', self relative)) = absoluteDirRelativeCombinedUri;
		assert: (absoluteDirPathUri / ('../path/', self relative)) = absoluteDirRelativeCombinedUri;
		assert: (absoluteDirRelativeCombinedUri / '../../path') = absolutePathUri;
		assert: (absoluteDirRelativeCombinedUri / ('../../..', self absolute)) = absolutePathUri.