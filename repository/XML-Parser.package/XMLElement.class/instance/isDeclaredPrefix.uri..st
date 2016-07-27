testing
isDeclaredPrefix: aPrefix uri: aUri
	"is namespace prefix mapped to uri in scope for use by receiver and descendants"
	^ self namespaceScope
		includesPrefix: aPrefix
		mappedTo: aUri