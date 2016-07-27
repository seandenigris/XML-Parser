resolving
entityURIFromPublicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	| baseURI entityURI |

	baseURI := aBaseURIString asXMLURI.
	entityURI :=
		baseURI combinedWith:
			(self
				entityURIFromPublicID: aPublicID
				systemID: aSystemID).
	(entityURI isLocalURI
		and: [baseURI isLocalURI not
			and: [self resolvesLocalFromNonLocal not]])
		ifTrue: [self errorLocalFromNonLocal].

	^ entityURI.