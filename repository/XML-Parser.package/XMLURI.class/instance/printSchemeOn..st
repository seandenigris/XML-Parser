printing
printSchemeOn: aStream
	self hasScheme
		ifTrue: [
			aStream 
				nextPutAll: self scheme;
				nextPut: $:.
			self hasAuthorityPrefix
				ifTrue: [aStream nextPutAll: '//']]