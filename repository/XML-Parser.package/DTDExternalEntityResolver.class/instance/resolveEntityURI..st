resolving
resolveEntityURI: aUri
	| readStream |

	self checkExternalEntityLimit.
	readStream := aUri asXMLURI getUpToLimit: self maxExternalEntitySize.
	self incrementEntityTotal.

	^ readStream.