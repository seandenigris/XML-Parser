tests
testCombiningAbsoluteURIs
	| domainURI fullURI fileURI |

	domainURI := self domain asXMLURI.
	fullURI := self fullURIString asXMLURI.
	fileURI := self fileURIString asXMLURI.
	self
		assert: domainURI / self fullURIString = fullURI;
		assert: domainURI / self domain = domainURI;
		assert: domainURI / self fileURIString = fileURI;
		assert: fullURI / self fullURIString = fullURI;
		assert: fullURI / self domain = domainURI;
		assert: fullURI / self fileURIString = fileURI;
		assert: fileURI / self fullURIString = fullURI;
		assert: fileURI / self domain = domainURI;
		assert: fileURI / self fileURIString = fileURI.