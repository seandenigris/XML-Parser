accessing
entityURIFromRelative: aRelativeUri andBase: aBaseUri
	^ (self clientForURIs: (Array with: aBaseUri with: aRelativeUri))
		combineRelative: aRelativeUri
		withBase: aBaseUri