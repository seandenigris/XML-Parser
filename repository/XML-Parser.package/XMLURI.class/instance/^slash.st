combining
/ aUriOrString
	| uriToCombineWith |

	(uriToCombineWith := aUriOrString asXMLURI) isEmpty
		ifFalse: [
			(uriToCombineWith isRelative)
				ifTrue: [^ self copy combineWithRelativeURI: uriToCombineWith]
				ifFalse: [^ uriToCombineWith]]