accessing
schemelessURIString
	^ (self domainURIString copyAfter: $:), self absolute, self queryString, self fragment