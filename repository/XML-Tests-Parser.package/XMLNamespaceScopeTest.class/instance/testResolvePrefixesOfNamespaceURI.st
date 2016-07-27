tests
testResolvePrefixesOfNamespaceURI
	| namespaceScope |

	namespaceScope := self newNamespaceScope.

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(namespaceScope resolvePrefixesOfNamespaceURI: uri) isEmpty.

		namespaceScope mapPrefix: prefix to: uri.
		self assert:
			(namespaceScope resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix).

		namespaceScope mapPrefix: 'newPrefix' to: uri.
		self assert:
			(namespaceScope resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix with: 'newPrefix')].

	self assert:
		(namespaceScope resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlNamespaceURI) = (Set with: 'xml').
	self assert:
		(namespaceScope resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlnsNamespaceURI) = (Set with: 'xmlns').

	"cannot map xmlns prefix, but can map xml"
	namespaceScope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert:
		(namespaceScope resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlNamespaceURI) = (Set with: 'xml').