accessing
schemelessURIWithPortString
	^ (self domainURIWithPortString copyAfter: $:), self absolute, self queryString, self fragment