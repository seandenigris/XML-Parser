private
parseExternalSubset: aUri
	| parser |

	parser :=
		self externalSubsetParserOnURI:
			(self externalEntityResolver
				combineURI: self documentURI
				with: aUri).
	parser parseDocument.