private
parseExternalSubset: aUri
	| parser |

	parser :=
		self externalSubsetParserOnURI:
			(self externalEntityResolver
				entityURIFromRelative: aUri
				andBase: self documentURI).
	parser parseDocument.