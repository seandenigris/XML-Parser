resolving
resolveExternalGeneralEntity: aName uri: anEntityURIOrURIString from: aSourceURIOrURIString
	^ self
		resolveExternalEntity: aName
		uri: anEntityURIOrURIString
		from: aSourceURIOrURIString
		class: DTDExternalGeneralEntity