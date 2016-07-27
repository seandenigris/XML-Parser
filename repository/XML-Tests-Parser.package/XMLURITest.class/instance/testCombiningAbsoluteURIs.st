tests
testCombiningAbsoluteURIs
	| domainUri fullUri fileUri relativeUri |

	domainUri := self domain asXMLURI.
	fullUri := self fullURIString asXMLURI.
	fileUri := self fileURIString asXMLURI.
	relativeUri := self relative asXMLURI.
	self
		assert: (domainUri / self fullURIString) = fullUri;
		assert: (fullUri / self domain) = domainUri;
		assert: (fullUri / self fileURIString) = fileUri;
		assert: (relativeUri / self domain) = domainUri;
		assert: (relativeUri / self fullURIString) = fullUri;
		assert: (relativeUri / self fileURIString) = fileUri.