combining
/ aUriOrString
	| uriToCombineWith |

	uriToCombineWith := aUriOrString asXMLURI.
	^ (uriToCombineWith isRelative)
		ifTrue: [self copy combineWithURI: uriToCombineWith]
		ifFalse: [uriToCombineWith].