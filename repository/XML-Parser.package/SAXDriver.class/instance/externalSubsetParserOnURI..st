private
externalSubsetParserOnURI: aUri
	^ XMLParser
		driver:
			(DTDExternalSubsetDriver
				saxDriver: self
				documentURI: aUri)
		on: (self externalEntityResolver resolveEntity: aUri)
	