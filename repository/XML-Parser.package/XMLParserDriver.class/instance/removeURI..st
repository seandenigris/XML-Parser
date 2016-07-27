accessing
removeURI: aUri
	self uris removeAt:
		(self uris
			lastIndexOf: aUri
			ifAbsent: [^ self])