private
externalSubsetParserOnURI: aURIString
	| combinedURI |

	combinedURI :=
		self externalEntityResolver
			combineSourceURI: self documentURI
			withEntityURI: aURIString.

	^ self
		externalSubsetParserOn:
			(XMLDecodingReadStreamAdapter on:
				(self externalEntityResolver streamResolveEntityURI: combinedURI))
		documentURI: combinedURI asString.