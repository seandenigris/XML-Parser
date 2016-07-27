private
resolveEntity: aName uri: anEntityUri from: aSourceUri class: aClass
	| combinedUri |

	combinedUri :=
		self
			combineURI: aSourceUri
			with: anEntityUri.
	^ aClass
		name: aName
		replacement: (self resolveEntity: combinedUri) contents
		uri: combinedUri asString.