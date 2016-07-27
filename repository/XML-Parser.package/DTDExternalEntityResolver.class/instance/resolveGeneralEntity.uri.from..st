resolving
resolveGeneralEntity: aName uri: anEntityUri from: aSourceUri
	^ self
		resolveEntity: aName
		uri: anEntityUri
		from: aSourceUri
		class: DTDExternalGeneralEntity