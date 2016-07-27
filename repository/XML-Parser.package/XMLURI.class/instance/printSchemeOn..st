printing
printSchemeOn: aStream
	self hasScheme
		ifTrue: [
			aStream "do not percent encode scheme"
				nextPutAll: self scheme;
				nextPut: $:.
			self hasAuthorityPrefix
				ifTrue: [aStream nextPutAll: '//']]