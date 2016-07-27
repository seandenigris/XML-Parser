tests
testClientSelectionFromURIs
	| resolver |

	resolver := DTDExternalEntityResolver new.
	self
		assert: ((resolver clientForURIs: #('relative' '/absolute')) isKindOf: XMLFileClient);
		assert: ((resolver clientForURIs: #('relative/path' 'relative')) isKindOf: XMLFileClient);
		assert: ((resolver clientForURIs: #('/absolute' '/absolute/path')) isKindOf: XMLFileClient).
	self assert:
		((resolver clientForURIs: #('http://www.example.com' 'relative'))
			isKindOf: XMLHTTPClient).
	self assert:
		((resolver clientForURIs: #('/absolute/path' 'http://www.example.com'))
			isKindOf: XMLHTTPClient).
	self assert:
		((resolver clientForURIs: #('http://www.example.com' 'http://www.example.com'))
			isKindOf: XMLHTTPClient).