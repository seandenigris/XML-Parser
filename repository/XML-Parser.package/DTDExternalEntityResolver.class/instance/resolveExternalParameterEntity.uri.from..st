resolving
resolveExternalParameterEntity: aName uri: anEntityURIOrURIString from: aSourceURIOrURIString
	^ self
		resolveExternalEntity: aName
		uri: anEntityURIOrURIString
		from: aSourceURIOrURIString
		class: DTDExternalParameterEntity