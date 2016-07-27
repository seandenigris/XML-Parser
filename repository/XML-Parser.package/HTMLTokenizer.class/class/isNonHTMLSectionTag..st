testing
isNonHTMLSectionTag: aTagName
	^ #('title' 'script' 'style') includes: aTagName