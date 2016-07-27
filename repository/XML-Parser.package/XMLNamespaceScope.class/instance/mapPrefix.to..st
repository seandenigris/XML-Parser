accessing
mapPrefix: aPrefix to: aUri
	self
		validatePrefix: aPrefix
		beforeMappingTo: aUri.

	"copy-on-write"
	self copiedPrefixMappings
		at: aPrefix
		put: aUri.