tests
testCombiningAbsoluteURIs
	| domainUri fullUri fileUri |

	domainUri := self domain asXMLURI.
	fullUri := self fullURIString asXMLURI.
	fileUri := self fileURIString asXMLURI.
	self
		assert: (domainUri / self fullURIString) = fullUri;
		assert: (domainUri / self domain) = domainUri;
		assert: (domainUri / self fileURIString) = fileUri;
		assert: (fullUri / self fullURIString) = fullUri;
		assert: (fullUri / self domain) = domainUri;
		assert: (fullUri / self fileURIString) = fileUri;
		assert: (fileUri / self fullURIString) = fullUri;
		assert: (fileUri / self domain) = domainUri;
		assert: (fileUri / self fileURIString) = fileUri.