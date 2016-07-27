private
externalSubsetParserOnURI: aURI
	^ self saxHandler parserClass
		driver:
			(DTDExternalSubsetParserDriver
				saxDriver: self
				documentURI: aURI asString)
		on: (self externalEntityResolver resolveEntityURI: aURI)
	