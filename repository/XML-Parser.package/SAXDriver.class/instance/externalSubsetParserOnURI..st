private
externalSubsetParserOnURI: aUri
	^ XMLParser
		driver:
			(DTDExternalSubsetDriver
				saxDriver: self
				documentURI: aUri asString)
		on: (self externalEntityResolver resolveEntity: aUri)
	