handling tokens
parseExternalSubset: aUri
	| absoluteUri parser |

	absoluteUri :=
		self externalEntityResolver
			entityURIFromRelative: aUri
			andBase: self documentURI.
	parser :=
		XMLParser
			driver:
				(DTDExternalSubsetDriver
					saxDriver: self
					documentURI: absoluteUri)
			on: (self externalEntityResolver resolveEntity: absoluteUri).
	parser parseDocument.