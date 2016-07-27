combining
combineSourceURI: aSourceXMLURIOrURIString withEntityURI: anEntityXMLURIOrURIString
	| sourceURI combinedURI |

	sourceURI := aSourceXMLURIOrURIString asXMLURI.
	combinedURI := sourceURI / anEntityXMLURIOrURIString.
	(combinedURI isLocalURI
		and: [sourceURI isLocalURI not
			and: [self resolvesLocalFromNonLocal not]])
		ifTrue: [self errorLocalFromNonLocal].
	^ combinedURI.