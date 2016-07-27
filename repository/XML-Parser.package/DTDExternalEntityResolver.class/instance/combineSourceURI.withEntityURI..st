combining
combineSourceURI: aSourceURIOrURIString withEntityURI: anEntityURIOrURIString
	| sourceURI combinedURI |

	sourceURI := aSourceURIOrURIString asXMLURI.
	combinedURI := sourceURI / anEntityURIOrURIString.
	(combinedURI isLocalURI
		and: [sourceURI isLocalURI not
			and: [self resolvesLocalFromNonLocal not]])
		ifTrue: [self errorLocalFromNonLocal].

	^ combinedURI.