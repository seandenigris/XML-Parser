paths
combineRelative: aRelativeUrl withBase: aBaseUrl
	| url urlClass |

	urlClass := Smalltalk at: #ZnUrl.
	(self beginsWithSupportedURLProtocol: aRelativeUrl)
		ifTrue: [^ (urlClass fromString: aRelativeUrl) printString].

	url := urlClass fromString: aBaseUrl.
	url isDirectoryPath
		ifFalse: [url queryRemoveAll].
	(self isNonRelative: aRelativeUrl)
		ifTrue: [url clearPath]
		ifFalse: [url removeLastPathSegment].
	^ (url / aRelativeUrl) printString.