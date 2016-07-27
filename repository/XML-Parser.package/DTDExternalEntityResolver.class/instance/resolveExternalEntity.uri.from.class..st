private
resolveExternalEntity: aName uri: anEntityURIOrURIString from: aSourceURIOrURIString class: aClass
	| combinedURI |

	combinedURI :=
		self
			combineSourceURI: aSourceURIOrURIString
			withEntityURI: anEntityURIOrURIString.

	^ aClass
		name: aName
		replacement: (self resolveEntityURI: combinedURI)
		uri: combinedURI asString.