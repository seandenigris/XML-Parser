private
resolveExternalEntity: aName publicID: aPublicID systemID: aSystemID from: aSourceURIString class: aClass
	| combinedURI |

	combinedURI :=
		self
			combineSourceURI: aSourceURIString
			withEntityURI: aSystemID.

	^ aClass
		name: aName
		replacement: (self resolveEntityURI: combinedURI)
		uri: combinedURI asString.