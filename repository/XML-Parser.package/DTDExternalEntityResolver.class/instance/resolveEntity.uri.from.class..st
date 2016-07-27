private
resolveEntity: aName uri: anEntityUri from: aSourceUri class: aClass
	| absoluteUri |

	absoluteUri :=
		self
			entityURIFromRelative: anEntityUri
			andBase: aSourceUri.
	^ aClass
		name: aName
		replacement: (self resolveEntity: absoluteUri) contents
		uri: absoluteUri.