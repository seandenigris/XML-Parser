accessing
defaultNamespace: aUri
	self
		validatePrefix: ''
		beforeMappingTo: aUri.

	"copy-on-write"
	self copiedPrefixMappings
		at: ''
		put: aUri.