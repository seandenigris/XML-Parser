accessing
removeURI: aUri
	"remove: removes the first match"
	self uris removeAt:
		(self uris
			lastIndexOf: aUri
			ifAbsent: [^ self])