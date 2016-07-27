accessing
popEntityURI: aURI
	"remove: removes the first match"
	self entityURIStack removeAt:
		(self entityURIStack
			lastIndexOf: aURI
			ifAbsent: [^ aURI]).
	^ aURI.