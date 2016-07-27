private
setPrefixMappingsFrom: aDictionary
	aDictionary keysAndValuesDo: [:prefix :uri |
		self
			validatePrefix: prefix
			beforeMappingTo: uri].

	"reuse the argument if there are no current mappings"
	prefixMappings
		ifNil: [prefixMappings := aDictionary]
		ifNotNil: [| copiedPrefixMappings |
			"otherwise copy and set"
			aDictionary keysAndValuesDo: [:prefix :uri |
				(copiedPrefixMappings "used so we only copy once"
					ifNil: [copiedPrefixMappings := self copiedPrefixMappings])
					at: prefix
					put: uri]].