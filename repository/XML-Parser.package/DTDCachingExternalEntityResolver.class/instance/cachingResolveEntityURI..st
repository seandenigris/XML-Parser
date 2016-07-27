private
cachingResolveEntityURI: aURIOrURIString
	| uri |

	uri := aURIOrURIString asXMLURI.
	^ self class
		entityCacheAt: uri
		ifAbsentPut: [
			self resolveEntityWith: [:maxSize |
				uri
					getUpToLimit: maxSize
					decoding: false]]