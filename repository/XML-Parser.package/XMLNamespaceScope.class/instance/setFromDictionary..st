private
setFromDictionary: aDictionary
	| copiedPrefixMappings |

	aDictionary keysAndValuesDo: [:prefix :uri |
		self
			validatePrefix: prefix
			beforeMappingTo: uri.

		(copiedPrefixMappings "used so we only copy once"
			ifNil: [copiedPrefixMappings := self copiedPrefixMappings])
			at: prefix
			put: uri]