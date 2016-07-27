private
parseExternalSubset: aURI
	| parser |

	parser :=
		self externalSubsetParserOnURI:
			(self externalEntityResolver
				combineURI: self documentURI
				with: aURI).
	parser parseDocument.