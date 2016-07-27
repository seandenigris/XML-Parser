private
externalSubsetParserOnURI: aUri
	^ self saxHandler parserClass
		driver:
			(DTDExternalSubsetParserDriver
				saxDriver: self
				documentURI: aUri asString)
		on: (self externalEntityResolver resolveEntityURI: aUri)
	