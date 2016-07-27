tests
testIncludesPrefix
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self
		deny: (namespaceScope includesPrefix: 'xml');
		deny: (namespaceScope includesPrefix: 'xmlns').

	"cannot map xmlns prefix, but can map xml"
	namespaceScope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert: (namespaceScope includesPrefix: 'xml').

	self namespaces keysAndValuesDo: [:prefix :uri |
		self deny: (namespaceScope includesPrefix: prefix).
		namespaceScope mapPrefix: prefix to: uri.
		self assert: (namespaceScope includesPrefix: prefix)].