private
resolveExternalEntity: aName uri: anEntityUri from: aSourceUri class: aClass
	| combinedUri replacement |

	combinedUri := self combineURI: aSourceUri with: anEntityUri.
	replacement := self resolveEntityURI: combinedUri.
	^ aClass
		name: aName
		replacement: replacement contents
		uri: combinedUri asString.