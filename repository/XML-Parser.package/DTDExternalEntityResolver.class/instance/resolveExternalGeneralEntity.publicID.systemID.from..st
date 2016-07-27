resolving
resolveExternalGeneralEntity: aName publicID: aPublicID systemID: aSystemID from: aSourceURIString
	^ self
		resolveExternalEntity: aName
		publicID: aPublicID
		systemID: aSystemID
		from: aSourceURIString
		class: DTDExternalGeneralEntity