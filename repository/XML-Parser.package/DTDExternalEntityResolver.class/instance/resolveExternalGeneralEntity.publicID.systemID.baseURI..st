resolving
resolveExternalGeneralEntity: aName publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	^ self
		resolveExternalEntity: aName
		publicID: aPublicID
		systemID: aSystemID
		baseURI: aBaseURIString
		class: DTDExternalGeneralEntity