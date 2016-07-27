combining
combineURI: aBaseURI with: aRelativeURI
	| baseURI combinedURI |

	baseURI := XMLURI fromString: aBaseURI.
	combinedURI := baseURI / aRelativeURI.
	(combinedURI isLocalURI
		and: [baseURI isLocalURI not
			and: [self resolvesLocalFromNonLocal notNil
				and: [self resolvesLocalFromNonLocal not]]])
		ifTrue: [self errorLocalFromNonLocal].

	^ combinedURI.