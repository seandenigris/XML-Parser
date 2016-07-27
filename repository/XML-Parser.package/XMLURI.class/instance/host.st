accessing
host
	self hasIPv6Host
		ifTrue: [^ self rawHost]
		ifFalse: [^ (self percentDecoded: self rawHost) asLowercase]