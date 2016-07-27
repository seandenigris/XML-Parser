resolving
resolveExternalGeneralEntity: aName uri: anEntityUri from: aSourceUri
	^ self
		resolveExternalEntity: aName
		uri: anEntityUri
		from: aSourceUri
		class: DTDExternalGeneralEntity