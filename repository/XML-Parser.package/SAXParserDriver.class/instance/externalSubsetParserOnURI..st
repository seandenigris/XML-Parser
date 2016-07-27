private
externalSubsetParserOnURI: aURIString
	| combinedURI |

	combinedURI :=
		self externalEntityResolver
			combineSourceURI: self documentURI
			withEntityURI: aURIString.

	^ self
		externalSubsetParserOn:
			(XMLDecodingReadStreamAdapter onExternalStream:
				(self externalEntityResolver streamResolveEntityURI: combinedURI))
		documentURI: combinedURI asString.