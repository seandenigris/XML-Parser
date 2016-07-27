tests
testResolvePrefixesOfNamespaceURI
	| element |

	element := self nodeClass new.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element resolvePrefixesOfNamespaceURI: uri) isEmpty.
		element
			declarePrefix: prefix
			uri: uri.
		self assert:
			(element resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix)].
	self
		assert:
			(element resolvePrefixesOfNamespaceURI:
				XMLNamespaceScope xmlNamespaceURI) =
					(Set with: 'xml');
		assert:
			(element resolvePrefixesOfNamespaceURI:
				XMLNamespaceScope xmlnsNamespaceURI) =
					(Set with: 'xmlns').