tests
testPrefixesOfNamespaceURI
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self assert:
		(namespaceScope prefixesOfNamespaceURI: XMLNamespaceScope xmlNamespaceURI) =
			(Set with: 'xml').
	self assert:
		(namespaceScope prefixesOfNamespaceURI: XMLNamespaceScope xmlnsNamespaceURI) =
			(Set with: 'xmlns').

	"cannot map xmlns prefix, but can map xml"
	namespaceScope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert:
		(namespaceScope prefixesOfNamespaceURI: XMLNamespaceScope xmlNamespaceURI) =
			(Set with: 'xml').

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (namespaceScope prefixesOfNamespaceURI: uri) isEmpty.

		namespaceScope mapPrefix: prefix to: uri.
		self assert: (namespaceScope prefixesOfNamespaceURI: uri) = (Set with: prefix).

		namespaceScope mapPrefix: 'newPrefix' to: uri.
		self assert:
			(namespaceScope prefixesOfNamespaceURI: uri) =
				(Set with: prefix with: 'newPrefix')].