tests
testClientSelectionFromURI
	| resolver |

	resolver := DTDExternalEntityResolver new.
	self
		assert: ((resolver clientForURI: 'relative/path') isKindOf: XMLFileClient);
		assert: ((resolver clientForURI: '/absolute/path') isKindOf: XMLFileClient);
		assert: ((resolver clientForURI: 'http://www.example.com') isKindOf: XMLHTTPClient).