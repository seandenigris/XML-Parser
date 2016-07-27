strings
schemelessURIWithPortString
	^ (self domainWithPort copyAfter: $:), self absolute, self queryString, self fragment