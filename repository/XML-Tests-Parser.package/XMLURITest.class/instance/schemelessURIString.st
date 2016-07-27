accessing
schemelessURIString
	^ (self domain copyAfter: $:), self absolute, self queryString, self fragment