combining
combineURI: aBaseUri with: aRelativeUri
	| baseUri combinedUri |

	baseUri := XMLURI fromString: aBaseUri.
	combinedUri := baseUri / aRelativeUri.
	(combinedUri isLocalURI
		and: [baseUri isLocalURI not
			and: [self resolvesLocalFromNonLocal notNil
				and: [self resolvesLocalFromNonLocal not]]])
		ifTrue: [XMLLimitException signal: 'Local URI referenced from non-local URI'].

	^ combinedUri.