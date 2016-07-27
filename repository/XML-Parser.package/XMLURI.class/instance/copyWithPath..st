copying
copyWithPath: aString
	^ self copyWithPathSegments: (XMLURIParser on: aString) parsePathSegments