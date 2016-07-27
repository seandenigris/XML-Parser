private
resolveExternalEntity: aName publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString class: aClass
	| entityURI |

	entityURI :=
		self
			entityURIFromPublicID: aPublicID
			systemID: aSystemID
			baseURI: aBaseURIString.

	^ aClass
		name: aName
		replacement: (self resolveEntityURI: entityURI)
		uri: entityURI asString.