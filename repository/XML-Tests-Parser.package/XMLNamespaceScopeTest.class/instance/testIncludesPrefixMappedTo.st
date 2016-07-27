tests
testIncludesPrefixMappedTo
	| namespaceScope |

	namespaceScope := self newNamespaceScope.
	self
		deny: (namespaceScope includesPrefix: 'xml' mappedTo: XMLNamespaceScope xmlNamespaceURI);
		deny: (namespaceScope includesPrefix: 'xmlns' mappedTo: XMLNamespaceScope xmlnsNamespaceURI).

	"cannot map xmlns prefix, but can map xml"
	namespaceScope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert: (namespaceScope includesPrefix: 'xml' mappedTo: XMLNamespaceScope xmlNamespaceURI).

	self namespaces keysAndValuesDo: [:prefix :uri |
		self deny: (namespaceScope includesPrefix: prefix mappedTo: uri).
		namespaceScope mapPrefix: prefix to: uri.
		self assert: (namespaceScope includesPrefix: prefix mappedTo: uri)].