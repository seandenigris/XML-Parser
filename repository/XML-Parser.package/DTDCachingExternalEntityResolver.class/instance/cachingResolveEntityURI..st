private
cachingResolveEntityURI: anXMLURIOrURIString
	| uri |

	uri := anXMLURIOrURIString asXMLURI.
	^ self class
		entityCacheAtURI: uri
		ifAbsentPut: [
			self resolveEntityWith: [:maxSize |
				uri
					getUpToLimit: maxSize
					decoding: false]]